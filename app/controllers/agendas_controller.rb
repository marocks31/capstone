class AgendasController < ApplicationController

  def create
    agenda = Agenda.new(
      user_id: current_user.id,
      sale_id: params[:sale_id]
    )
    if agenda.save
      render json: agenda.as_json
    else 
      render json: {error_messages: agenda.errors.full_messages},
      status: 422
    end 
  end 
  
  def index
    agenda = current_user.agenda.where(status: "added")
    render json: agenda.as_json
  end 


end
