class PiratesController < ApplicationController

  #rescue_from ActiveRecord::RecordNotFound, with: :not_found_res

  def index
    pirates = Pirate.all
    render json: pirates
  end

  def show
    pirate = find_pirate
    render json: pirate, include: [:islands], status: :ok
  end

  def destroy
    pirate = find_pirate
    pirate.destroy
    head :no_content 
  end
  
  private

  def find_pirate
    Pirate.find(params[:id])
  end

 # def not_found_res(invalid)
    #render json: { error: "#{invalid.model} not found" }, status: :not_found
  #end

end
