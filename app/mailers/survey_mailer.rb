class SurveyMailer < ApplicationMailer
  NEWLYWEDS = ['kutkovybohdan@gmail.com', 'juliachornenka95@gmail.com']

  def registration_email(survey)
    @survey = survey
    mail(to: NEWLYWEDS, subject: 'Нові гості!')
  end

end