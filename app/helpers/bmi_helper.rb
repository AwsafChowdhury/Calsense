

module BmiHelper
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
  