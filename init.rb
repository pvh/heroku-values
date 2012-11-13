require "heroku/command/base"

class Heroku::Command::Values < Heroku::Command::Base

  # values
  #
  # our company values
  #
  def index
    values = [
      "Clarity beats simplicity.
    ]
  end

private

  def optional_app
    app rescue nil
  end

end
