# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all

Photo.search('plants').each do |photo|
  Photo.create!(photographer: photo.user.name,
    img_src:photo.url,
    likes: 0,
    original:photo.src["original"],
    medium:photo.src["medium"],
    large:photo.src["large"],
    portrait:photo.src["portrait"])
end

Photo.curate.each do |photo|
  Photo.create!(photographer: photo.user.name,
    img_src:photo.url,
    likes: 0,
    original:photo.src["original"],
    medium:photo.src["medium"],
    large:photo.src["large"],
    portrait:photo.src["portrait"])
end



  # Photo.curate('dogs').each do |photo|
  #   byebug
  #   Photo.create(photographer: photo.user.name, img_src: photo.url, likes: 0, img_name:"water" )
  # end
