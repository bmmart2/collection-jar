require 'httparty'
require 'rubygems'
require 'json'
class MovieApi

  attr_reader :query, :body

  include HTTParty
  base_uri "https://omdbapi.com"
  read_timeout 5
  attr_accessor :name

  def initialize(name)
    self.name = name
    @query = { "apikey" => "2efeb882" }
  end

  def search_by_title(title)
    response = MovieApi.get("/?apikey=2efeb882&s=#{title}").to_s
    parsed_response = JSON.parse(response)
    return parsed_response["Search"]
  end

  def get_by_id(id)
    response = MovieApi.get("/?apikey=2efeb882&i=#{id}")
    return response.parsed_response
  end

  def get_by_title(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}")
    return response.parsed_response
  end

  def get_title(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["Title"]
  end

  def get_year(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["Year"]
  end

  def get_plot(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["Plot"]
  end

  def get_poster_link(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["Poster"]
  end

  def get_type(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["Type"]
  end

  def get_genre(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["Genre"]
  end

  def get_director(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["Director"]
  end

  def get_metascore(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["Metascore"]
  end

  def get_imdb(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["imdbRating"]
  end

  def get_actors(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["Actors"]
  end

  def get_writers(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["Writer"]
  end

  def get_rated(title)
    response = MovieApi.get("/?apikey=2efeb882&t=#{title}").to_s
    parsed_response = JSON.parse(response)
    parsed_response["Rated"]
  end

end
