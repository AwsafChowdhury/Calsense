class BmiController < ApplicationController
    def calculate_bmi_form
        render 'calculate_bmi_form'
    end
  
    def result
      @bmi = params[:bmi].to_f
      @condition = params[:condition]
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
  
