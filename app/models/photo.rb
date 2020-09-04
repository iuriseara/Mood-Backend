require 'pexels'
class Photo < ApplicationRecord

  client = Pexels::Client.new(ENV["CLIENT_ID"])

  client.photos.search('clouds')


end
