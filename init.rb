require "heroku/command/base"

class Heroku::Command::Values < Heroku::Command::Base

  # output a random value
  #
  def index
    puts values[rand(values.length)]
  end

  # output all values
  #
  def all
    values.each do |value|
      puts value
    end
  end

  private
    # our company values
    #
    def values
      [
        "Software runs better online.",
        "Services are better than software.",
        "Move fast and improve over time.",
        "Beauty is a result of good design, not something added at the end.",
        "Grow your user base. The first version should ship to one person.",
        "Invest resources in things that are working.",
        "Experiment constantly at a small scale.",
        "Be ultimately responsible for what you do.",
        "Failure is a systemic issue, not a personal one. Vigilance doesn't work.",
        "Developers are worthy of great experiences.",
        "However well we're doing, we can always do better.",
        "Don't build it till you need it (pain driven development).",
        "This is a long-term project.",
        "Big projects are shipped in many small pieces.",
        "Have the fewest simplest dependencies as possible.",
        "Prefer to have fewer but better features, products, parts, offices, and cars.",
        "Easy to use is important and simple to understand is even better.",
        "Respect for detail shows respect for users."
      ]
    end

end
