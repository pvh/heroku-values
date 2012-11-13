require "heroku/command/base"

class Heroku::Command::Values < Heroku::Command::Base

  # values
  #
  # our company values
  #
  def index
    values = [
      "Clarity beats simplicity."
    ]

    values.each do |value|
      puts value
    end
  end

end
