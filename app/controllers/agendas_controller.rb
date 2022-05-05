class AgendasController < ApplicationController

  def index
    agendas = current_user.agendas
    render json: agendas.as_json
   end 

  def create
    agenda = Agenda.new(
      user_id: current_user.id,
      sale_id: params[:sale_id]
    )

    if agenda.save
      render json: agenda.as_json
    else 
      render json: {error_message: agenda.errors.full_messages},
      status: 422
    end 
  end 

end
