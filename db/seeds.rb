[User, Cart, CartProduct, Product, Category].each do |klass|
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
	name: 'jacket', 
	price: '29.99',
	size: '10',
	description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
	brand: 'bordot', 
	# image: 'http://images.asos-media.com/inv/media/7/9/3/6/3296397/black/image1xl.jpg'
	image: 'http://images.asos-media.com/inv/media/7/9/3/6/3296397/black/image1xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

green_shirt = Product.create!(
  name: 't-shirt',
  price: '19.99',
  size: '8',
  description: 'green shirt',
  brand: 'kookai',
  image: 'http://i00.i.aliimg.com/wsphoto/v0/1977650040_1/XS-XXL-New-2014-Women-s-font-b-Shirts-b-font-Fashion-Back-Deep-V-Neck.jpg'
)

white_shirt = Product.create!(
  name: 't-shirt',
  price: '19.99',
  size: '8',
  description: 'white shirt',
  brand: 'kookai',
  # image: 'http://images.asos-media.com/inv/media/6/5/3/1/4241356/pinkgrey/image1xl.jpg'
  image: 'http://images.asos-media.com/inv/media/6/5/3/1/4241356/pinkgrey/image1xl.jpg',
  category_id: Category.where(name: 'Dress Shirts').first.id

)

annies_cart = annie.cart

annies_cart.products << denim_jacket
annies_cart.products << green_shirt
