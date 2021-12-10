class HomeController < ApplicationController
  def index
    @q = Publication.ransack(params[:q])
    @publications = @q.result(distinct: true)
  end
end
