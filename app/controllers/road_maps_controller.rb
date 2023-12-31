class RoadMapsController < ApplicationController
  before_action :set_road_map, only: %i[ show update destroy ]

  # GET /road_maps
  def index
    @road_maps = RoadMap.all

    render json: @road_maps
  end

  # GET /road_maps/1
  def show
    render json: @road_map
  end

  # POST /road_maps
  def create
    @road_map = RoadMap.new(road_map_params)

    if @road_map.save
      render json: @road_map, status: :created, location: @road_map
    else
      render json: @road_map.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /road_maps/1
  def update
    if @road_map.update(road_map_params)
      render json: @road_map
    else
      render json: @road_map.errors, status: :unprocessable_entity
    end
  end

  # DELETE /road_maps/1
  def destroy
    @road_map.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_road_map
      @road_map = RoadMap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def road_map_params
      params.require(:road_map).permit(:title, :description)
    end
end
