class TreasuresController < ApplicationController
  def create
    treasure = Treasure.create!(treasure_params)
    render json: treasure, include: [:pirate, :island], status: :created
  end

  private

  def treasure_params
    params.permit( :contents, :pirate_id, :island_id )
  end
end
