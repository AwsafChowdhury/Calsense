class DietPlansController < ApplicationController

  def index
    @weight_loss_plans = DietPlan.where(category: 'Loosing weight')
    @staying_fit_plans = DietPlan.where(category: 'Staying Fit')  # Define staying fit plans
    @gaining_weight_plans = DietPlan.where(category: 'Gaining weight')  # Define gaining weight plans
  end


  def new
    @diet_plan = DietPlan.new
  end

  def create
    @diet_plan = DietPlan.new(diet_plan_params)

    if @diet_plan.save
      redirect_to diet_plans_path, notice: 'Diet plan was successfully created.'
    else
      render :new
    end
  end

  def show
    @plan = DietPlan.find(params[:id])
  end

  private

  def diet_plan_params
    params.require(:diet_plan).permit(
      :name, :category, :recommended_calories,
      :breakfast_calories, :lunch_calories, :snacks_calories, :dinner_calories,
      :carbohydrates, :proteins, :fats
    )
  end
end
