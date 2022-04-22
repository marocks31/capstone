class SalesController < ApplicationController

def  index
  sales = Sale.all
  render json: sales.as_json
end 

def create
  sale = Sale.new(
    # user id?
    title: params[:title],
    description: params[:description],
    start_date: params[:start_date],
    time: params[:time],
    address: params[:address],
    picture: params[:picture],
    end_date: params[:end_date]
  )
  sale.save
  render json: sale.as_json
end

def show
  sale = Sale.find_by(id: params[:id])
  render json: sale.as_json
end

def update
  sale = Sale.find_by(id: params[:id])
  sale.title = params[:title] || sale.title
  sale.description = params[:description] || sale.description
  sale.start_date = params[:start_date] || sale.start_date
  sale.time = params[:time] || sale.time
  sale.address = params[:address] || sale.address
  sale.picture = params[:picture] || sale.picture
  sale.end_date = params[:end_date] || sale.end_date
  sale.save
  render json: sale.as_json
end

def destroy
  sale = Sale.all.find_by(id: params[:id])
  sale.destroy
  render json: {message: "Sale succesfully destroyed."}
end 


end
