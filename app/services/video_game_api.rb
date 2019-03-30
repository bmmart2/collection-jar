require 'httparty'
require 'rubygems'
class VideoGameApi

    attr_reader :headers, :body

    include HTTParty
    base_uri "https://api-v3.igdb.com"
    read_timeout 5
    attr_accessor :name

    def initialize(name)
        self.name = name
        @headers = { "user-key" => "4d1656208e292dfc41ac695355e2d6fb"}


    end

    def search_by_title(title)
        body = "search \"" + title + "\"; fields name, genres,
            cover,aggregated_rating, platforms, aggregated_rating_count,
            category, involved_companies, release_dates;
            limit 10;"
        response = VideoGameApi.get("/games",
            :headers => self.headers,
            :body => body)
        return response.parsed_response
    end

    def find_release_date(gameID)
        body = "fields y; where game =" + gameID.to_s + ";"
        response = VideoGameApi.get("/release_dates",
            :headers => self.headers,
            :body => body)
        if response[0] != nil
            return response[0]['y'];
        else
            return "N/A";
        end
    end

    def get_cover_link(cover, size)
        body = "fields image_id;
                where id = " + cover.to_s + ";
                limit 1;"
        response = VideoGameApi.get("/covers",
            :headers => self.headers,
            :body => body)
        imageID = response[0]['image_id']
        if imageID != nil
            link = "https://images.igdb.com/igdb/image/upload/t_" + size.to_s + "/" + imageID.to_s + ".jpg"
        else
            link = "https://via.placeholder.com/90"
        end
        return link
    end


end
