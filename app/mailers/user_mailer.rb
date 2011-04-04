class UserMailer < ActionMailer::Base
  default :from => "project_management@sprout-training.com"

  def welcome(person)
    @greeting = "Welcome #{person.email}. Enjoy our Product."
    mail :to => person.email,
         :subject => "Welcome to Ur Project Management"
  end

end
