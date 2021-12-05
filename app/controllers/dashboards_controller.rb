class DashboardsController < ApplicationController
  def index
    puts "*******llegando al index"
   @grafico = User.where(created_at: 30.days.ago..Date.today+2 ).group(:name).count 

   puts @grafico
  end
end

