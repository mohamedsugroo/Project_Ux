class HiresMailer < ApplicationMailer

  def person
    @greeting = "Hi"

    mail to: "mohamedsugroo@gmail.com"
  end

  def company
    @greeting = "Hi"

    mail to: "mohamedsugroo@gmail.com"
  end
end
