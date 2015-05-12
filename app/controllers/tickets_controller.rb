class TicketsController < ApplicationController
  
  def new
  end
  
  def create
    @project = Project.find(params[:project_id])
    @ticket = @project.tickets.create(ticket_params)
    redirect_to project_path(@project)
  end
 
  private
  def ticket_params
    params.require(:ticket).permit(:title, :description, :priority, :difficulty, :status)
    end
end
