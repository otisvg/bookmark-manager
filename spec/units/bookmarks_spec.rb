describe Bookmarks do
  describe '#all' do
    it 'displays a list bookmarks' do
      expect(Bookmarks.all).to eq({google: "https://www.google.co.uk/", slack: "https://slack.com/intl/en-gb/"})
    end
  end
end
