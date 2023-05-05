class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all
end

def show
    @laptop = Laptop.find(params[:id])
end

def new
    @laptop = Laptop.new

end

def create
        @laptop = Laptop.new(laptop_params)
    if @laptop.save
        redirect_to laptop_path(@laptop)
    else
        render :new
    end         
end
def edit
    @laptop = Laptop.find(params[:id])
end

def update
        @laptop = Laptop.find(params[:id])
    if @laptop.update(laptop_params)
        redirect_to laptop_path(@laptop)
    else
        render :edit
    end        
end

def _laptop
  @laptop = Laptop.find(params[:id])
end

private
def laptop_params
    params.require(:laptop).permit(:marca, :precio, :procesador, :ram, :ssd)
end    

end
