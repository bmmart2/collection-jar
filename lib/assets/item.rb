
class Item
    @dateCreated
    @userID
    @collectionID

    attr_accessor :dateCreated, :userID, :collectionID

    def initialize()
        @dateCreated = Time.now
        @userID = "N/A"
        @collectionID = "N/A"
    end
end
