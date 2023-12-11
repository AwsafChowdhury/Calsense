class SurveysController < ApplicationController
  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to survey_path(@survey), notice: "Survey successfully submitted!"
    else
      render :new
    end
  end

  def show
    @survey = Survey.find(params[:id])
  end
  

  private

  def survey_params
    # Define permitted parameters for the survey model
    params.require(:survey).permit(:age, :weight, :height, :gender)
  end
end
