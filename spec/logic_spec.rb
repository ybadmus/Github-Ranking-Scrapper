require_relative '../lib/logic'
require_relative '../lib/scrapper'

describe Logic do

  describe '#list_of_countries' do
    let(:logic) { Logic.new }
    
    it "returns the list of all countries" do
      expect(logic.list_of_countries.length).to eq(2586)
    end
  end

  describe '#valid_country' do
    let(:logic) { Logic.new }

    it "returns true if country is a valid country" do
      expect(logic.valid_country("Ghana")).to be_truthy
    end

    it "returns false if country is invalid" do
      expect(logic.valid_country("Ghaaaaaa")).to be_falsey
    end
  end

  describe '#all_active_users' do
    let(:logic) { Logic.new }

    it "returns all 256 active users" do
      logic.active_country = "ghana"
      expect(logic.all_active_users.length).to eq(256)
    end
  end

  describe '#active_users_in_range' do
    let(:logic) { Logic.new }

    it "returns all users in a range" do
      logic.active_country = "ghana"
      expect(logic.active_users_in_range(10, 20).length).to eq(11)
    end
  end

  describe '#rank_by_username' do
    let(:logic) { Logic.new }
    let(:user) { "ybadmus" }

    it "returns user with the same username" do
      logic.active_country = "ghana"
      expect(logic.rank_by_username(user)[0][1]).to eq('ybadmus(Yusif Badmus)')
    end
  end

  describe '#organizations_ranking' do
    let(:logic) { Logic.new }

    it "returns 10 ranking of active companies using github" do
      logic.active_country = "ghana"
      expect(logic.organizations_ranking.length).to eq(11)
    end
  end

end