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
    @parsed_doc.at_css('[class="users-list"]').css('tbody tr')
  end

  def get_organization_list
    @parsed_doc.at_css('[class="organizations-list"]')
  end

  def get_active_users_in_range(start_range, length)
    binding.pry
    @parsed_doc.at_css('[class="users-list"]').css('tbody tr').slice(start_range, length)
  end

  def get_user_by_username
    
  end

end


#puts 'verified!' if doc.at_css('[id="verify"]').text.eql? 'foobar'