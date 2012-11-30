require "heroku/command/base"

class Heroku::Command::Values < Heroku::Command::Base

  include Heroku::Helpers

  # output a random value
  #
  def index
    puts get('http://values-api.herokuapp.com/random')['result']
  end

  # output all values
  #
  def all
    get('http://values-api.herokuapp.com/all')['result'].each { |item|
      puts item
    }
  end

  private

  def get(path)
    json_decode(RestClient::Resource.new(path).get.body)
  end

end
