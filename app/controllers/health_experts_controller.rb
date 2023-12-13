class HealthExpertsController < ApplicationController
  def index
    @nutrition_experts = HealthExpert.where(category: 'Nutrition Expert')
    @doctors = HealthExpert.where(category: 'Doctor')
    @fitness_instructors = HealthExpert.where(category: 'Fitness Instructor')
  end
end
