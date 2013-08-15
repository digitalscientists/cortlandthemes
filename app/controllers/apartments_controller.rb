class ApartmentsController < ApplicationController

  def index
    @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.find(params[:id])

    values = {}
    params["content"].each{|k,v| values[k] = v["value"]}
    @apartment.update_attributes(values)

    render json: @apartment
  end

end
