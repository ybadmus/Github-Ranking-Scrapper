require 'nokogiri'
require 'open-uri'

require 'pry'

class Scrapper

  def initialize(active_country)
    #binding.pry
    @active_country = active_country.downcase
    link = "https://commits.top/#{@active_country}.html"
    @parsed_doc = Nokogiri::HTML(URI.open(link))
  end

  def get_all_active_users
    @parsed_doc.at_css('[class="users-list"]')
  end

  def get_organization_list
    @parsed_doc.at_css('[class="organizations-list"]')
  end


end


#puts 'verified!' if doc.at_css('[id="verify"]').text.eql? 'foobar'