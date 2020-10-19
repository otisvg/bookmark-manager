class BookmarkList

  attr_reader :bookmarklist

  def initialize
    @bookmarklist = {google: "https://www.google.co.uk/", slack: "https://slack.com/intl/en-gb/"}
  end

  def all
    @bookmarklist
  end
end