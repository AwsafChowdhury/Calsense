class DietPlansController < ApplicationController
  include BmiHelper

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
  def personalized
    bmi = params[:bmi].to_f
    @condition = determine_condition(bmi)

    @diet_plans = case @condition
                  when 'Underweight'
                    # Fetch diet plans for underweight category from your database or seeds.rb
                    DietPlan.where(category: 'Gaining weight')
                  when 'Normal Weight'
                    # Fetch diet plans for normal weight category from your database or seeds.rb
                    DietPlan.where(category: 'Staying Fit')
                  # Add similar cases for 'Overweight' and 'Obese'
                  else
                    # Fetch diet plans for overweight or obese categories
                    DietPlan.where(category: ['Loosing weight'])
                  end
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
