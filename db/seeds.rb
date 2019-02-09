# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "Van Gogh", description: "Sunflowers", img_url: "../../app/assets/images/vangogh_sunflowers.jpg")

Product.create(name: "Jean Francois Millet", description: "The Sower", img_url: "../../app/assets/images/millet_sower.jpg")

Product.create(name: "Pablo Picasso", description: "A Portrait", img_url: "../../app/assets/images/picasso_femme.jpg")

Product.create(name: "Marc Rothko", description: "Color Fields", img_url: "../../app/assets/images/rothko.jpg")

Product.create(name: "Leonardo da Vinci", description: "Mona Lisa", img_url: "../../app/assets/images/mona-lisa.jpg")