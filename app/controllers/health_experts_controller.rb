class HealthExpertsController < ApplicationController
    def index
      @nutrition_experts = HealthExpert.where(category: 'Nutrition Expert')
      @doctors = HealthExpert.where(category: 'Doctor')
      @fitness_instructors = HealthExpert.where(category: 'Fitness Instructor')
    end
    def index_nutrition
      @nutrition_experts = HealthExpert.where(category: 'Nutrition Expert')
    end
  
    def index_doctors
      @doctors = HealthExpert.where(category: 'Doctor')
    end
  
    def index_fitness
      @fitness_instructors = HealthExpert.where(category: 'Fitness Expert')
    end
  
  
end
