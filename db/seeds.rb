[User, Cart, CartProduct, Product, Category].each do |klass|
  klass.send :destroy_all
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
	price: '$29.99',
	size: '10',
	description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
	brand: 'bordot', 
	image: 'http://images.asos-media.com/inv/media/7/9/3/6/3296397/black/image1xl.jpg'
)

green_shirt = Product.create!(
  name: 't-shirt',
  price: '$19.99',
  size: '8',
  description: 'green shirt',
  brand: 'kookai',
  image: 'http://i00.i.aliimg.com/wsphoto/v0/1977650040_1/XS-XXL-New-2014-Women-s-font-b-Shirts-b-font-Fashion-Back-Deep-V-Neck.jpg'
)

white_shirt = Product.create!(
  name: 't-shirt',
  price: '$19.99',
  size: '8',
  description: 'white shirt',
  brand: 'kookai',
  image: 'http://images.asos-media.com/inv/media/6/5/3/1/4241356/pinkgrey/image1xl.jpg'
)

annies_cart = annie.cart

annies_cart.products << denim_jacket
annies_cart.products << green_shirt

[ 
  'accessories',
  'coats & jackets',
  'denim',
  'designer',
  'dresses',
  'jumpers',
  'jeans',
  't-shirts',
  'tanks',
  'jewellery',
  'cardigans',
  'jumpsuits',
  'shirts',
  'shoes',
  'shorts',
  'skirts',
  'swimwear',
  'pants'
].each do |category|
  Category.create! name: category
end