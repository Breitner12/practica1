class CarsController < ApplicationController
  def index
    @cars = Car.all
end

def show
    @car = Car.find(params[:id])
end

def new
    @car = Car.new

end

def create
        @car = Car.new(car_params)
    if @car.save
        redirect_to car_path(@car)
    else
        render :new
    end         
end
def edit
    @car = Car.find(params[:id])
end

def update
        @car = Car.find(params[:id])
    if @car.update(car_params)
        redirect_to car_path(@car)
    else
        render :edit
    end        
end

def _car
    @car = Car.find(params[:id])
end

private
def car_params
    params.require(:car).permit(:placa, :color, :modelo, :marca)
end    

end
