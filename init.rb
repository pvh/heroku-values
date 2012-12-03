require "heroku/command/base"

class Heroku::Command::Values < Heroku::Command::Base

  include Heroku::Helpers

  # output a random value
  #
  def index
    puts get_values.sample
  end

  # output all values
  #
  def all
    get_values.each { |item|
      puts item
    }
  end

  private

  def cache_path
    "#{home_directory}/.heroku/values_cache"
  end

  def has_cached?
    File.exists(cache_path) && File.mtime(cache_path) > Time.now - (60 * 24 * 24)
  end

  def get_values
    if has_cached?
      result = File.read(cache_path)
    else
      result = RestClient::Resource.new('http://values-api.herokuapp.com/all').get.body
      File.write(cache_path, result)
    end

    json_decode(result)['result']
  end

end
