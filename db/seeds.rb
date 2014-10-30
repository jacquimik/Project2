[User, Cart, OrderProduct, Product, Category].each do |klass|
  klass.send :destroy_all
end


[ 
  'New In',
  'Dresses',
  'Party Dresses',
  'Maxi Dresses',
  'Casual Dresses',
  'Tops',
  'Dress Shirts',
  'Casual Shirts',
  'Long Sleeve',
  'Crop Tops',
  'Bottoms',
  'Jeans',
  'Shorts',
  'Skirts',
  'Pants',
  'Playsuits',
  'Accessories',
  'Bags',
  'Jewellery',
  'Shoes',
  'Outerwear',
  'Jackets',
  'Coats',
  'Kimonos',
  'Knitwear',
  'Sale'
].each do |category|
  Category.create! name: category
end

annie = User.create!(
  firstname: 'Angela',
	lastname: 'Mikulasev',
	email: 'angela@angela.com',
	password: 'chicken', 
	password_confirmation:'chicken', 
	admin: true
)

denim_jacket = Product.create!(
	name: 'Jacket', 
	price: '29.99',
	size: '10',
	description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
	brand: 'Bordot', 
	# image: 'http://images.asos-media.com/inv/media/7/9/3/6/3296397/black/image1xl.jpg'
	image: 'http://images.asos-media.com/inv/media/7/9/3/6/3296397/black/image1xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

green_shirt = Product.create!(
  name: 'Green Dress Shirt',
  price: '49.99',
  size: '8',
  description: 'green shirt',
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/1/9/0/2/4032091/greenlilly/image1xl.jpg'
)

white_shirt = Product.create!(
  name: 'White Casual Shirt',
  price: '19.99',
  size: '8',
  description: 'white shirt',
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/1/9/0/2/4032091/greenlilly/image1xl.jpg',
  category_id: Category.where(name: 'Dress Shirts').first.id
)

party_dress = Product.create!(
  name: 'Black and White Deep V Dress',
  price: '79.99',
  size: '8',
  description: 'black and white dress',
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/0/5/1/0/4470150/white/image1xl.jpg',
  category_id: Category.where(name: 'Party Dresses').first.id
)

#annies_cart = Cart.create :user_id => annie.id

# annies_cart.products << denim_jacket
# annies_cart.products << green_shirt
