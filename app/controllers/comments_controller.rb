class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  def index
    if can? :manage, Comment
      @comments = Comment.all
    else
     redirect_to publications_path
     end

  end

  # GET /comments/1 or /comments/1.json
  def show
    require 'sendgrid-ruby'
   
    from = SendGrid::Email.new(email: 'proyectori427@gmail.com')
    to = SendGrid::Email.new(email: current_user.email)
    subject = 'Muchas gracias por tu comentario!!'
    content = SendGrid::Content.new(type: 'text/plain', value: 'Tus comentarios son importantes para nosotros. Gracias por aportar a la construccion diaria de esta comunidad')
    mail = SendGrid::Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: Rails.application.credentials.dig(:sendgrid, :sendgrid_api_key))
    response = sg.client.mail._('send').post(request_body: mail.to_json)

    if response.status_code == 202
      puts "gracias"
    else
      puts "error"
    end
  end

  # GET /comments/new
  def new
    @comment = Comment.new
    @user = current_user
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    if (current_user.admin?) || (current_user==@comment.user)
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to comments_url, notice: "Comment was successfully destroyed." }
        format.json { head :no_content }
      end
    else
      redirect_to publications_url, alert: "Usted no tiene los permisos para eliminar comentarios"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:text, :images, :publication_id, :user_id, :title)
    end
end
