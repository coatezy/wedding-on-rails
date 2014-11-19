class Event < ActiveRecord::Base

  def days_to_go
    (time - Time.zone.now).to_i / 1.day
  end

  def formatted_time
    time.strftime("%A #{time.day.ordinalize} %B %Y")
  end

end