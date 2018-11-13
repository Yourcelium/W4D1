# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all 
ArtworkShare.destroy_all 

u1 = User.create(username: 'Carl Jungus')
u2 = User.create(username: "Dwayne 'The Rock' Johnson")
u3 = User.create(username: 'Mr. Rogers')
u4 = User.create(username: 'Shaq')
u5 = User.create(username: 'Tom Killion')

a1 = Artwork.create(title: "Tim and Eric", image_url: "http://img.wennermedia.com/article-leads-horizontal/rs-tim-heidecker-eric-wareheim-76e31c0e-7e31-4cf2-a6f6-42fd8cbf4ff2.jpg", artist_id: u1.id)
a2 = Artwork.create(title: "Mt. Tam", image_url: "https://www.marinarts.org/wp-content/uploads/sites/www.marinarts.org/images/2017/02/TomKillion_CatImg_FA2016.jpeg", artist_id: u5.id)
a3 = Artwork.create(title: "Self Portrait", image_url: "https://twitter.com/galleries1988/status/675435390128394240", artist_id: u4.id)

# Artwork.create(title: "Tim and Eric", image_url: "url", artist_id: 1)
# Artwork.create(title: "Mt. Tam", image_url: "url2", artist_id: 5)
# Artwork.create(title: "Self Portrait", image_url: "url2", artist_id: 4)



ArtworkShare.create(artwork_id: a1.id, viewer_id: u2.id)
ArtworkShare.create(artwork_id: a3.id, viewer_id: u4.id)
ArtworkShare.create(artwork_id: a2.id, viewer_id: u3.id)