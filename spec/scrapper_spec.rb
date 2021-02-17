require_relative '../lib/scrapper'

describe Scrapper do
  describe '#all_active_users' do
    let(:scrapper) { Scrapper.new('ghana') }

    it 'returns all 256 active users' do
      expect(scrapper.all_active_users.length).to eq(256)
    end
  end

  describe '#active_users_in_range' do
    let(:scrapper) { Scrapper.new('ghana') }

    it 'returns all users in a range' do
      expect(scrapper.active_users_in_range(10, 20).length).to eq(20)
    end
  end

  describe '#organizations_ranking' do
    let(:scrapper) { Scrapper.new('ghana') }

    it 'returns 10 ranking of active companies using github' do
      expect(scrapper.organizations_ranking.length).to eq(11)
    end
  end
end
