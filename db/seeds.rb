[User, Cart, CartProduct, Product, Category].each do |klass|
  klass.send :destroy_all
end


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
	description: 'demin jacket', 
	brand: 'bordot', 
	image: 'http://www.bardot.com.au/files/product/images/403527/9631jb1-denim-front-.jpg',
  category_id: Category.where(name: 'jumpers').first.id
)

green_shirt = Product.create!(
  name: 't-shirt',
  price: '$19.99',
  size: '8',
  description: 'green shirt',
  brand: 'kookai',
  image: 'http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=64181961',
  category_id: Category.where(name: 'shirts').first.id
)

annies_cart = annie.cart

annies_cart.products << denim_jacket
annies_cart.products << green_shirt