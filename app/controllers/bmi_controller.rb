class BmiController < ApplicationController
    include BmiHelper
    def calculate_bmi_form
        render 'calculate_bmi_form'
    end

  
 
    def result
        @bmi = params[:bmi].to_f
        @condition = params[:condition]
        @bmi_category = determine_category(@bmi)
    
        # Fetch experts based on BMI category
        @experts = fetch_experts_by_category(@bmi_category)
        # Debug statement to check @experts
        p @experts.inspect
      end
    
    def calculate_bmi
      weight = params[:weight].to_f
      height = params[:height].to_f / 100  # Convert height to meters
  
      bmi = weight / (height * height)
  
      condition = determine_condition(bmi)
  
      redirect_to result_path(bmi: bmi, condition: condition)
    end
    def reset_bmi
        redirect_to calculate_bmi_form_path(bmi: nil, condition: nil)
      end
      
  
    private
    def determine_category(bmi)
        if bmi < 18.5
          'Underweight'
        elsif bmi >= 18.5 && bmi < 25
          'Normal Weight'
        elsif bmi >= 25 && bmi < 30
          'Overweight'
        else
          'Obese'
        end
    end

    def fetch_experts_by_category(category)
        case category
        when 'Underweight'
          HealthExpert.where(category: 'Nutrition Expert')
        when 'Normal Weight'
          HealthExpert.where(category: 'Fitness Instructor')
        when 'Overweight', 'Obese'
          HealthExpert.where(category: 'Doctor')
        else
          HealthExpert.all
        end
        p @experts
    end
    def determine_condition(bmi)
      if bmi < 18.5
        'Underweight'
      elsif bmi >= 18.5 && bmi < 25
        'Normal Weight'
      elsif bmi >= 25 && bmi < 30
        'Overweight'
      else
        'Obese'
      end
    end
  end
  
