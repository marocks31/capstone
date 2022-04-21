class SalesController < ApplicationController

def  index
  sales = Sale.all
  render json: sales.as_json
end 

def create
end

def show
  sale = Sale.find_by(id: params[:id])
  render json: sale.as_json
end

def update
end

def destroy
  sale = Sale.all.find_by(id: params[:id])
  sale.destroy
  render json: {message: "Sale succesfully destroyed."}
end 


end
