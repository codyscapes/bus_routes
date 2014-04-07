class LinesController < ApplicationController

 def index
  @lines = Line.all
  @stations = Station.all
 end

 def new
  @line = Line.new
 end

 def edit
  @line = Line.find(params[:id])
 end

 def show
  @line = Line.find(params[:id])
  @stops = @line.stops
  @stop = Stop.new
 end

 def update
   @line = Line.find(params[:id])

   @line.update(lines_params)
   redirect_to root_path
 end

 def destroy
  @line = Line.find(params[:id])
  @line.destroy
  redirect_to root_path
 end


 def create
  @line = Line.create(lines_params)
  redirect_to root_path
 end

 private

 def lines_params
  params.require(:line).permit(:name)
 end

end
