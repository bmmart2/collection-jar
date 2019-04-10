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

    def get_by_id(id)
        body = "fields *;
            where id =" + id.to_s + ";
            limit 1;"
        response = VideoGameApi.get("/games",
            :headers => self.headers,
            :body => body)
        return response.parsed_response
    end

    def get_genre(genreID)
        body = "fields *; where id =" + genreID.to_s + "; limit 1;"
        response = VideoGameApi.get("/genres",
            :headers => self.headers,
            :body => body)
        if response[0] != nil
            return response[0]['name'];
        else
            return "";
        end
    end

    def get_platform(platformID)
        body = "fields *; where id =" + platformID.to_s + "; limit 1;"
        response = VideoGameApi.get("/platforms",
            :headers => self.headers,
            :body => body)
        if response[0] != nil
            return response[0]['name'];
        else
            return "";
        end
    end

    def find_involved_company(gameID)
      body = "fields name; where published=["+gameID.to_s+"];"
      response = VideoGameApi.get("/companies",
          :headers => self.headers,
          :body => body)
      if response[0] != nil
          return response[0]['name'];
      else
          return "N/A";
      end
    end

    def find_release_date(gameID)
      body = "fields y; sort y asc; where game=" + gameID.to_s + ";"
      response = VideoGameApi.get("/release_dates",
          :headers => self.headers,
          :body => body)
      if response[0] != nil
          return response[0]['y'];
      else
          return "N/A";
      end
    end

    def get_cover_id(cover)
        body = "fields image_id;
                where id = " + cover.to_s + ";
                limit 1;"
        response = VideoGameApi.get("/covers",
            :headers => self.headers,
            :body => body)
        imageID = response[0]['image_id']
        if imageID != nil
            return imageID
        else
            return
        end
    end

    def get_cover_link(coverID, size)
        link = "https://images.igdb.com/igdb/image/upload/t_" + size.to_s + "/" + coverID.to_s + ".jpg"
        return link;
    end
end
