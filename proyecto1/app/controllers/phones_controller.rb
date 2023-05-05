class PhonesController < ApplicationController
  def index
    @phones = Phone.all
end

def show
    @phone = Phone.find(params[:id])
end

def new
    @phone = Phone.new

end

def create
        @phone = Phone.new(phone_params)
    if @phone.save
        redirect_to phone_path(@phone)
    else
        render :new
    end         
end
def edit
    @phone = Phone.find(params[:id])
end

def update
        @phone = Phone.find(params[:id])
    if @phone.update(phone_params)
        redirect_to phone_path(@phone)
    else
        render :edit
    end        
end

def _phone
    @phone = Phone.find(params[:id])
end

private
def phone_params
    params.require(:phone).permit(:marca, :precio, :capacidad, :modelo)
end    

end
