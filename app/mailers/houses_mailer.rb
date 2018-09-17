class HousesMailer < ActionMailer::Base

  add_template_helper(HousesHelper)

  default from: "mail@example.com"

  def houses_send(houses, user)
    @houses = houses
    @user = user
    #change to house_manager email; house currently doesn't know about house_manager or his/her email.
    mail(to: "#{@user.email}", subject: "User wants to become housemate")
  end
end
