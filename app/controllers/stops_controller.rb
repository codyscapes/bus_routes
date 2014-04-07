class StopsController < ApplicationController


  def index
    @stops = Stop.all
  end

  def create
    @stop = Stop.create(stops_params)
    redirect_to root_path
  end


  private

  def stops_params
    params.require(:stop).permit(:line_id, :station_id)
  end
end
