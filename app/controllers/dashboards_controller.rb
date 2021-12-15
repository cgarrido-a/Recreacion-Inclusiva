class DashboardsController < ApplicationController
  def index
  
    @usuarios_registrados_por_dia = User.group_by_day(:created_at).count

  

  end

  
end

