require_relative 'item.rb'

class VideoGame < Item
    @title
    @publisher
    @platform
    @year
    @UPCCode
    @condition

    attr_accessor :title, :publisher, :platform, :year, :UPCCode, :condition

        def initialize()
            super
            @title = "N/A"
            @publisher = "N/A"
            @platform = "N/A"
            @year = 0
            @UPCCode = 0
            @condition = "N/A"
        end

end
