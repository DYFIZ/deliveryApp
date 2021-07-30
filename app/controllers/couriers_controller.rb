class CouriersController < ApplicationController
  def index
    @couriers = Courier.all
  end
  def show
    @couriers = Courier.all
  end
  def edit
    @couriers = Courier.all
  end
end
