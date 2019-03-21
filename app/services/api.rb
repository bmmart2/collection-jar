class Api
    include HTTParty
    base_uri "https://api-v3.igdb.com/games"
    attr_accessor :name

    def initialize(name)
        self.name = name;
    end

end
