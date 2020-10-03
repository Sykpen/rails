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
    nick_name: 'Sykpyn',
    first_name: 'Sergey',
    last_name: 'Potapov',
    password: '467321'
  },
  {
    nick_name: 'MrGrecha',
    first_name: 'Dima',
    last_name: 'Grecha',
    password: 'sykpynthebest228'
  }
]

Admin.destroy_all

admins.each do |admin|
  Admin.create(nick_name: admin[:nick_name], first_name: admin[:first_name], last_name: admin[:last_name], password: admin[:password])
end

clients = [
  {
    email: 'test',
    password: 'test',
    address: 'test',
    first_name: 'test',
    last_name: 'test',
    nick_name: 'test',
    balance: 0,
    bonus: 0
  },
  {
    email: 'test1',
    password: 'test1',
    address: 'test1',
    first_name: 'test1',
    last_name: 'test1',
    nick_name: 'test1',
    balance: 0,
    bonus: 0
  },
  {
    email: 'test2',
    password: 'test2',
    address: 'test2',
    first_name: 'test2',
    last_name: 'test2',
    nick_name: 'test2',
    balance: 0,
    bonus: 0
  }
]

Client.destroy_all

clients.each do |client|
  Client.create(
    email: client[:email],
    password: client[:password],
    address: client[:address],
    first_name: client[:first_name],
    last_name: client[:last_name],
    nick_name: client[:nick_name],
    balance: client[:balance],
    bonus: client[:bonus]
  )
end
