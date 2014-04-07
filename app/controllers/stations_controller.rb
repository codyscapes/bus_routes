class StationsController < ApplicationController

 def index
  @stations = Station.all
 end

 def new
  @station = Station.new
 end

 def show
  @station = Station.find(params[:id])
  @stops = @station.stops
  @stop = Stop.new
end

 def edit
  @station = Station.find(params[:id])
 end

 def update
   @station = Station.find(params[:id])
   @station.update(stations_params)
   redirect_to root_path
 end

 def destroy
  @station = Station.find(params[:id])
  @station.destroy
  redirect_to root_path
 end


 def create
  @station = Station.create(stations_params)
  redirect_to root_path
 end

 private

 def stations_params
  params.require(:station).permit(:name)
 end

end
