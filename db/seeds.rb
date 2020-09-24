# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
products = [
  {
    title: 'Острый Цыпленок',
    titleEN: 'Spicy chiken',
    price: 50,
    amount: 5,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[withMeat spacy hit]
  },
  {
    title: 'Паназия',
    titleEN: 'Panazia',
    price: 70,
    amount: 10,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[withMeat hit]
  },
  {
    title: 'Супер Sykpyn',
    titleEN: 'Super Sykpyn',
    price: 80,
    amount: 15,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[vegetarian spacy]
  },
  {
    title: 'Любимая пицца Димаса',
    titleEN: 'Dimas best',
    price: 90,
    amount: 20,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[vegetarian sales]
  },
  {
    title: 'Мясное удовольствие',
    titleEN: 'Meat pleasure',
    price: 100,
    amount: 25,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[spacy withMeat sales]
  },
  {
    title: 'Мандариновая',
    titleEN: 'Tangerine',
    price: 50,
    amount: 5,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[spacy vegetarian]
  },
  {
    title: 'Любимая Карбонара',
    titleEN: 'Favorite carbonara',
    price: 70,
    amount: 10,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[spacy sales]
  },
  {
    title: 'Восемь Сыров',
    titleEN: '8 cheeses',
    price: 80,
    amount: 15,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[spacy withMeat sales]
  },
  {
    title: 'Цыпленок Барбекю',
    titleEN: 'Chiken B-B-Q',
    price: 90,
    amount: 20,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[spacy withMeat sales]
  },
  {
    title: 'Цыпленок Рэнч',
    titleEN: 'Garlic chiken',
    price: 100,
    amount: 25,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[spacy hit sales]
  },
  {
    title: 'Маргарита',
    titleEN: 'Margarita',
    price: 90,
    amount: 20,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[hit vegetarian]
  },
  {
    title: 'Горчичная',
    titleEN: 'Mustard',
    price: 100,
    amount: 25,
    image: 'https://i.ibb.co/hs2SdxJ/4.jpg',
    type: %w[hit sales]
  }
]

products.each do |product|
  Product.create(title: product[:title], titleEN: product[:titleEN], price: product[:price], amount: product[:amount], image: product[:image])
end
