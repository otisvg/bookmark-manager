describe Bookmarks do
  describe '#all' do
    it 'displays a list bookmarks' do
      expect(Bookmarks.all).to eq(["http://www.makersacademy.com",
        "http://www.google.com",
        "http://www.destroyallsoftware.com"])
    end
  end
end
