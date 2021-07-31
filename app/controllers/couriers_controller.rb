class CouriersController < ApplicationController
  def index
    @couriers = Courier.all
  end
 
  def new
    @courier = Courier.new
    respond_to do |format|
      format.html{render :new, locals: {courier: @courier}}
    end  
  end
 

  def show
    @courier = Courier.find(params[:id]) 
    @deliveryInfo = Package.where(courier_id:params[:id]).order(created_at: :desc)
    respond_to do |format|
      format.html{render :show, locals: {courier: @courier}} 
    end 
    
  end


  def edit
    @courier = Courier.find(params[:id]) 
    respond_to do |format|
      format.html{render :edit, locals: {courier: @courier}}
    end  
  end

  def update
    @courier = Courier.find(params[:id])
    @courier.update(courier_params)

    redirect_to show_path(@courier)
  end

  def create
    courier = Courier.create(courier_params)
    redirect_to couriers_index_path 
  end  

  private

  def courier_params
    params.require(:courier).permit(:name, :email);
  end  
end
