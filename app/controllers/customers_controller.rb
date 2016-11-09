class CustomersController < ApplicationController
  def new
  end


  def create
    response = Http.post("http://localhost:3000/customers.json", json: {customer:{email: params[:customer][:email], password: params[:customer][:password], password_confirmation: params[:customer][:password_confiration], firstname: params[:customer][:firstname], lastname: params[:customer][:lastname]}})


    customer = JSON.parse(response)
    session[:email] = customer["email"]
    session[:token] = customer["token"]

    @name = session[:email]
  end

end
