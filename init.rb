require "heroku/command/base"

class Heroku::Command::Values < Heroku::Command::Base

  # values
  #
  # our company values
  #
  def values
    values = <<END
    software runs better online.
    services are better than software
    take the extra time to make it beautiful.
    move fast and improve over time.
    grow your user base. the first version should ship to one person.
    invest resources in things that are working.
    experiment constantly at a small scale.
    be ultimately responsible for what you do.
    failure is a systemic issue, not a personal one. vigilance doesn't work.
    developers are worthy of great experiences.
    however well we're doing, we can always do better.
    don't build it till you need it. (pain driven development)
    this is a long-term project.
    big projects are shipped in many small pieces.
    have the fewest simplest dependencies as possible.
    prefer to have fewer, better {features,products,parts,offices,cars}.
    easy to use is important and easy to understand is even better.
END
    values.split("\n")
  end

  def index
    puts values[rand(values.length)]
  end

  def all
    values.each do |value|
      puts value
    end
  end
end
