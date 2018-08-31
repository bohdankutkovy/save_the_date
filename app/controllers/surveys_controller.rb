class SurveysController < ApplicationController

  def create
    respond_to do |format|
      format.html { render nothing: true }
      format.json do
        survey = Survey.new(survey_params)

        if survey.save
          SurveyMailer.registration_email(survey).deliver_now
          render json: { message: 'Success!' }, status: 200
        else
          render json: { message: survey.errors.values.first }, status: 400
        end
      end
    end
  end

  private

  def survey_params
    params.require(:survey).permit(:name, :phone_number, :email, :guest, :event, :message)
  end

end