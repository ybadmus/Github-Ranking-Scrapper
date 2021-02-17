require 'nokogiri'
require 'rest-client'

class Scrapper
  def initialize(active_country)
    @active_country = active_country.downcase
    link = "https://commits.top/#{@active_country}.html"
    @parsed_doc = Nokogiri::HTML(RestClient.get(link))
  end

  def all_active_users
    @parsed_doc.at_css('[class="users-list"]').css('tbody tr')
  end

  def organizations_ranking
    @parsed_doc.at_css('[class="organizations-list"]').css('tr')
  end

  def active_users_in_range(start_range, length)
    @parsed_doc.at_css('[class="users-list"]').css('tbody tr').slice(start_range, length)
  end
end
