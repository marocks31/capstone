class SalesController < ApplicationController

def  index
  sales = Sale.all
  render json: sales.as_json
end 

def create

  if(params["picture"])
    #use image url
    picture = params["picture"]
  elsif(params["image_file"])
    #catch file upload and send to cloudinary
    response = Cloudinary::Uploader.upload(["image_file"], resource_type: :auto)
    picture = response["secure_url"]
  else 
    picture = nil
  end 

  sale = Sale.new(
    user_id: current_user.id,
    title: params[:title],
    description: params[:description],
    start_date: params[:start_date],
    start_time: params[:start_time],
    address: params[:address],
    picture: picture,
    end_date: params[:end_date],
    end_time: params[:end_time]
  )
  if sale.save
  render json: sale.as_json
  else 
    render json: {error_messages:sale.errors.full_messages}, status: 422
  end 
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
  sale.start_time = params[:time] || sale.start_time
  sale.address = params[:address] || sale.address
  sale.picture = params[:picture] || sale.picture
  sale.end_date = params[:end_date] || sale.end_date
  sale.end_time = params[:time] || sale.end_time
  sale.save
  render json: sale.as_json
end

def destroy
  sale = Sale.all.find_by(id: params[:id])
  sale.destroy
  render json: {message: "Sale succesfully destroyed."}
end 


end
