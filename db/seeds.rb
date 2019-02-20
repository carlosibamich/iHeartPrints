# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = Product.create(
  [
    {
      name: "Raphael Sanzio",
      description: "The Vatican was a huge source for commissions for the extraordibarliy prolific young Raphael. Among the best examples of of the young artist's mastery is The Sisitine Madonna.",
      img_url: "raphael_sistine-m.jpg",
      price: 25.95
    },
    {
      name: "Vincent van Gogh",
      description: "Perhaps the most famous painting of sunflowers from the series painted by Van Gogh during his stay in Arles, France — where he hoped to create an artist community.",
      img_url: "vangogh_sunflowers.jpg",
      price: 22.95
    },
    {
      name: "Jean Francois Millet",
      description: "Millet's gorgeous paintings of the hard-working yet poor field laborers in the french region of provence is evident in this classically-Millet grey-lit landscape of A Sower Tilling the Field.",
      img_url: "millet_sower.jpg",
      price: 23.95
    },
    {
      name: "Pablo Picasso",
      description: "Picasso is well known as a primary figure in the artistically radical invention of cubism and its subsequent evolution. Here a portrait of the artist breaks spatial planes in order to flatten and simplify the complexity of the human head.",
      img_url: "picasso_femme.jpg",
      price: 18.95
    },
    {
      name: "Marc Rothko",
      description: "The beautiful paintings of color fields by Marc Rothko display the push and pull of color, light, and deceptively simple shapes.",
      img_url: "rothko.jpg",
      price: 18.95
    },
    {
      name: "Leonardo da Vinci",
      description: "The iconic image of the Mona Lisa and her famous smile is the most famous example of Da Vinci's breakthrough technique known as sfumato.",
      img_url: "mona-lisa.jpg",
      price: 23.95
    },
  ]
)
