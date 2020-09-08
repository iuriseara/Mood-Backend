require 'pexels'
class Photo < ApplicationRecord

  def self.search(query)
    client = Pexels::Client.new(ENV["CLIENT_ID"])
    client.photos.search(query , per_page: 20).photos

  end

  def self.curate
    client = Pexels::Client.new(ENV["CLIENT_ID"])
    client.photos.curated(per_page: 5).photos
  end



# YERRRRRRR




end
