require 'httparty'
require 'rubygems'
class VideoGameApi

    attr_reader :headers, :body

    include HTTParty
    base_uri "https://api-v3.igdb.com"
    read_timeout 5
    attr_accessor :name

    def initialize()

        @headers = { "user-key" => "4d1656208e292dfc41ac695355e2d6fb"}


    end

    def search_by_title(title)
        body = "search \"" + title + "\"; fields name, genres,
            cover,aggregated_rating, aggregated_rating_count,
            category, involved_companies, release_dates;
            limit 10;"
        response = VideoGameApi.get("/games",
            :headers => self.headers,
            :body => body)
        return response.parsed_response
    end



end
