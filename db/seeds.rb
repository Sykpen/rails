# frozen_string_literal: true

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

Product.destroy_all

products.each do |product|
  Product.create(title: product[:title], titleEN: product[:titleEN], price: product[:price], amount: product[:amount], image: product[:image])
end

admins = [
  {
    nickName: 'Sykpyn',
    firstName: 'Sergey',
    lastName: 'Potapov',
    password: '467321'
  },
  {
    nickName: 'MrGrecha',
    firstName: 'Dima',
    lastName: 'Grecha',
    password: 'sykpynthebest228'
  }
]

Admin.destroy_all

admins.each do |admin|
  Admin.create(nickName: admin[:nickName], firstName: admin[:firstName], lastName: admin[:lastName], password: admin[:password])
end
