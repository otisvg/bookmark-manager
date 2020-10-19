describe BookmarkList do
  describe '#all' do
    it 'lists bookmarks' do
      expect(subject.all).to eq({google: "https://www.google.co.uk/", slack: "https://slack.com/intl/en-gb/"})
    end
  end
end
