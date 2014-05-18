class PlansController < ApplicationController
  def index
    @plans = Plan.all
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)

    if @paln.save
      redirect_to @plan, notice: 'Plan was successfully created.'
    else
      render :new
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:comments, :days, :gyms, :month, :url, :name)
  end
end
