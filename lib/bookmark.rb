class BookmarkList

  attr_accessor :list

  def initialize
    @list = {google: "https://www.google.co.uk/", slack: "https://slack.com/intl/en-gb/"}
  end

  def all
    @list
  end
end
