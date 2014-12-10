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
  'Party Tops',
  'Casual Tops',
  'Long Sleeved',
  'T-Shirts',
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

buddy = User.create!(
  firstname: 'Buddy',
  lastname: 'B',
  email: 'buddy@buddy.com',
  password: 'buddy12', 
  password_confirmation:'buddy12', 
  admin: false
)

denim_jacket = Product.create!(
	name: 'Leather Jacket', 
	price: '219.99',
	size: '10',
	description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
	brand: 'Bordot', 
	image: 'http://images.asos-media.com/inv/media/7/9/3/6/3296397/black/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/9/3/6/3296397/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

denim_jacket = Product.create!(
  name: 'Leather Jacket', 
  price: '219.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/7/9/3/6/3296397/black/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/9/3/6/3296397/image2xl.jpg',
  category_id: Category.where(name: 'Sale').first.id
)

blue_shorts = Product.create!(
  name: 'Shorts with Scallop Hem', 
  price: '29.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/0/7/6/9/4479670/lightblue/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/7/6/9/4479670/image2xl.jpg',
  category_id: Category.where(name: 'Bottoms').first.id
)

blue_shorts = Product.create!(
  name: 'Shorts with Scallop Hem', 
  price: '29.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/0/7/6/9/4479670/lightblue/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/7/6/9/4479670/image2xl.jpg',
  category_id: Category.where(name: 'Shorts').first.id
)

blue_shorts = Product.create!(
  name: 'Shorts with Belted Waist Detail', 
  price: '49.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/8/5/1/1/4231158/image3xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/8/5/1/1/4231158/image2xl.jpg',
  category_id: Category.where(name: 'Shorts').first.id
)

blue_shorts = Product.create!(
  name: 'Shorts with Belted Waist Detail', 
  price: '49.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/8/5/1/1/4231158/image3xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/8/5/1/1/4231158/image2xl.jpg',
  category_id: Category.where(name: 'Bottoms').first.id
)

demin_shorts = Product.create!(
  name: 'Vintage Levi Shorts in Blue', 
  price: '59.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/5/9/9/6/4236995/lightblue/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/5/9/9/6/4236995/image3xl.jpg',
  category_id: Category.where(name: 'Shorts').first.id
)

demin_shorts = Product.create!(
  name: 'Vintage Levi Shorts in Blue', 
  price: '59.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/5/9/9/6/4236995/lightblue/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/5/9/9/6/4236995/image3xl.jpg',
  category_id: Category.where(name: 'Bottoms').first.id
)

jeans = Product.create!(
  name: 'Vintage Levi Shorts in Blue', 
  price: '59.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/5/9/9/6/4236995/lightblue/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/5/9/9/6/4236995/image3xl.jpg',
  category_id: Category.where(name: 'Jeans').first.id
)

jeans = Product.create!(
  name: 'Ripped Boyfriend Jeans', 
  price: '59.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/7/6/1/7/3747167/blue/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/6/1/7/3747167/image2xl.jpg',
  category_id: Category.where(name: 'Jeans').first.id
)

jeans = Product.create!(
  name: 'The Vienna Skinny Jean', 
  price: '59.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/1/6/4/4/4544461/blackest/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/1/6/4/4/4544461/image2xl.jpg',
  category_id: Category.where(name: 'Jeans').first.id
)

jeans = Product.create!(
  name: 'The Vienna Skinny Jean', 
  price: '59.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/1/6/4/4/4544461/blackest/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/1/6/4/4/4544461/image2xl.jpg',
  category_id: Category.where(name: 'Bottoms').first.id
)

skirt = Product.create!(
  name: 'Pencil Skirt in Floral Print', 
  price: '79.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/0/4/5/3/4683540/image3xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/4/5/3/4683540/image2xl.jpg',
  category_id: Category.where(name: 'Bottoms').first.id
)

skirt = Product.create!(
  name: 'Pencil Skirt in Floral Print', 
  price: '79.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/0/4/5/3/4683540/image3xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/4/5/3/4683540/image2xl.jpg',
  category_id: Category.where(name: 'Skirts').first.id
)

skirt = Product.create!(
  name: 'Pencil Skirt in Floral Print', 
  price: '79.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/0/4/5/3/4683540/image3xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/4/5/3/4683540/image2xl.jpg',
  category_id: Category.where(name: 'Sale').first.id
)

skirt = Product.create!(
  name: 'Full Skirt in Sheer White', 
  price: '119.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Sleeve Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/7/3/3/2/4282337/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/3/3/2/4282337/image2xl.jpg',
  category_id: Category.where(name: 'Bottoms').first.id
)

skirt = Product.create!(
  name: 'Full Skirt in Sheer White', 
  price: '119.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/7/3/3/2/4282337/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/3/3/2/4282337/image2xl.jpg',
  category_id: Category.where(name: 'Skirts').first.id
)

skirt = Product.create!(
  name: 'Mini Skirt with Curved Hem', 
  price: '24.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/6/1/9/7/4657916/blush/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/1/9/7/4657916/image2xl.jpg',
  category_id: Category.where(name: 'Skirts').first.id
)

skirt = Product.create!(
  name: 'Mini Skirt with Curved Hem', 
  price: '24.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/6/1/9/7/4657916/blush/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/1/9/7/4657916/image2xl.jpg',
  category_id: Category.where(name: 'Bottoms').first.id
)

playsuit = Product.create!(
  name: 'Rainbow Floral Playsuit', 
  price: '45.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/3/7/2/3/4493273/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/3/7/2/3/4493273/image3xl.jpg',
  category_id: Category.where(name: 'Playsuits').first.id
)

playsuit = Product.create!(
  name: 'Oasis Floral Playsuit', 
  price: '35.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/4/9/0/5/4505094/bluemulti/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/4/9/0/5/4505094/image2xl.jpg',
  category_id: Category.where(name: 'Playsuits').first.id
)

demin_shorts = Product.create!(
  name: 'Ripped Boyfriend Jeans', 
  price: '59.99',
  size: '10',
  description: 'Body: 100% Leather, Sleeves: 98% Cotton, 2% Elastane, Lining: 100% Cotton, Lining: 100% Polyester', 
  brand: 'Bordot', 
  image: 'http://images.asos-media.com/inv/media/7/6/1/7/3747167/blue/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/6/1/7/3747167/image2xl.jpg',
  category_id: Category.where(name: 'Bottoms').first.id
)


green_shirt = Product.create!(
  name: 'Green Dress Shirt',
  price: '49.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/1/9/0/2/4032091/greenlilly/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/1/9/0/2/4032091/image2xl.jpg',
  category_id: Category.where(name: 'Casual Tops').first.id
)

green_shirt = Product.create!(
  name: 'Green Dress Shirt',
  price: '49.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/1/9/0/2/4032091/greenlilly/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/1/9/0/2/4032091/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

green_shirt = Product.create!(
  name: 'Crop Top in Floral Print',
  price: '49.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/2/9/6/3/4573692/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/2/9/6/3/4573692/image2xl.jpg',
  category_id: Category.where(name: 'Party Tops').first.id
)

green_shirt = Product.create!(
  name: 'Crop Top in Floral Print',
  price: '49.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/2/9/6/3/4573692/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/2/9/6/3/4573692/image2xl.jpg',
  category_id: Category.where(name: 'Crop Tops').first.id
)

green_shirt = Product.create!(
  name: 'Crop Top in Floral Print',
  price: '49.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/2/9/6/3/4573692/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/2/9/6/3/4573692/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

white_shirt = Product.create!(
  name: 'Crop Top with Collar Detail',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/6/1/6/5/4485616/cream/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/1/6/5/4485616/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

white_shirt = Product.create!(
  name: 'Crop Top with Collar Detail',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/6/1/6/5/4485616/cream/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/1/6/5/4485616/image2xl.jpg',
  category_id: Category.where(name: 'Crop Tops').first.id
)

white_shirt = Product.create!(
  name: 'Crop Top with Collar Detail',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/6/1/6/5/4485616/cream/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/1/6/5/4485616/image2xl.jpg',
  category_id: Category.where(name: 'Sale').first.id
)

white_shirt = Product.create!(
  name: 'Parisian Top with Cutwork Detail',
  price: '25.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/6/8/9/9/4729986/offwhite/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/8/9/9/4729986/image2xl.jpg',
  category_id: Category.where(name: 'Sale').first.id
)

white_shirt = Product.create!(
  name: 'Parisian Top with Cutwork Detail',
  price: '25.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/6/8/9/9/4729986/offwhite/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/8/9/9/4729986/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

white_shirt = Product.create!(
  name: 'Parisian Top with Cutwork Detail',
  price: '25.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/6/8/9/9/4729986/offwhite/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/8/9/9/4729986/image2xl.jpg',
  category_id: Category.where(name: 'Casual Tops').first.id
)

long_shirt = Product.create!(
  name: 'Floral Print Long Sleeve Top',
  price: '65.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/9/0/2/9/4719209/bluefogcomb/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/9/0/2/9/4719209/image2xl.jpg',
  category_id: Category.where(name: 'Long Sleeved').first.id
)

long_shirt = Product.create!(
  name: 'Floral Print Long Sleeve Top',
  price: '65.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/9/0/2/9/4719209/bluefogcomb/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/9/0/2/9/4719209/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

long_shirt = Product.create!(
  name: 'Long Sleeve with Feather Print',
  price: '19.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/9/6/8/1/4581869/image4xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/9/6/8/1/4581869/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

long_shirt = Product.create!(
  name: 'Long Sleeve with Feather Print',
  price: '19.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/9/6/8/1/4581869/image4xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/9/6/8/1/4581869/image2xl.jpg',
  category_id: Category.where(name: 'Long Sleeved').first.id
)

long_shirt = Product.create!(
  name: 'Shirt with Spot Piping Detail',
  price: '89.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/1/5/6/6/4166651/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/1/5/6/6/4166651/image2xl.jpg',
  category_id: Category.where(name: 'Long Sleeved').first.id
)

long_shirt = Product.create!(
  name: 'Shirt with Spot Piping Detail',
  price: '89.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/1/5/6/6/4166651/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/1/5/6/6/4166651/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

long_shirt = Product.create!(
  name: 'Shirt with Spot Piping Detail',
  price: '89.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/1/5/6/6/4166651/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/1/5/6/6/4166651/image2xl.jpg',
  category_id: Category.where(name: 'Sale').first.id
)

long_shirt = Product.create!(
  name: ' Crop Top with Sweetheart Neckline',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/2/1/3/0/4620312/green/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/2/1/3/0/4620312/image2xl.jpg',
  category_id: Category.where(name: 'Sale').first.id
)

long_shirt = Product.create!(
  name: ' Crop Top with Sweetheart Neckline',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/2/1/3/0/4620312/green/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/2/1/3/0/4620312/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

long_shirt = Product.create!(
  name: ' Crop Top with Sweetheart Neckline',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/2/1/3/0/4620312/green/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/2/1/3/0/4620312/image2xl.jpg',
  category_id: Category.where(name: 'Crop Tops').first.id
)

long_shirt = Product.create!(
  name: ' Crop Top with Sweetheart Neckline',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  image: 'http://images.asos-media.com/inv/media/2/1/3/0/4620312/green/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/2/1/3/0/4620312/image2xl.jpg',
  category_id: Category.where(name: 'Long Sleeved').first.id
)

white_shirt = Product.create!(
  name: 'White Casual Shirt',
  price: '19.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/6/5/3/1/4241356/pinkgrey/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/5/3/1/4241356/image2xl.jpg',
  category_id: Category.where(name: 'Casual Tops').first.id
)

white_shirt = Product.create!(
  name: 'White Casual Shirt',
  price: '19.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/6/5/3/1/4241356/pinkgrey/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/5/3/1/4241356/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

green_shirt = Product.create!(
  name: 'The Pocket T-Shirt',
  price: '19.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/5/6/0/0/4560065/khaki/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/5/6/0/0/4560065/image2xl.jpg',
  category_id: Category.where(name: 'Casual Tops').first.id
)

green_shirt = Product.create!(
  name: 'The Pocket T-Shirt',
  price: '19.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/5/6/0/0/4560065/khaki/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/5/6/0/0/4560065/image2xl.jpg',
  category_id: Category.where(name: 'T-Shirts').first.id
)

green_shirt = Product.create!(
  name: 'The Pocket T-Shirt',
  price: '19.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/5/6/0/0/4560065/khaki/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/5/6/0/0/4560065/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

pattern_shirt = Product.create!(
  name: 'T-Shirt with Solstice Print',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/5/4/2/0/4630245/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/5/4/2/0/4630245/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

pattern_shirt = Product.create!(
  name: 'T-Shirt with Solstice Print',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/5/4/2/0/4630245/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/5/4/2/0/4630245/image2xl.jpg',
  category_id: Category.where(name: 'T-Shirts').first.id
)

pattern_shirt = Product.create!(
  name: 'T-Shirt with Solstice Print',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/5/4/2/0/4630245/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/5/4/2/0/4630245/image2xl.jpg',
  category_id: Category.where(name: 'Sale').first.id
)

pattern_shirt = Product.create!(
  name: 'Boyfriend T-Shirt with Penguin Print',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/6/2/3/1/4681326/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/2/3/1/4681326/image2xl.jpg',
  category_id: Category.where(name: 'Tops').first.id
)

pattern_shirt = Product.create!(
  name: 'Boyfriend T-Shirt with Penguin Print',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/6/2/3/1/4681326/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/2/3/1/4681326/image2xl.jpg',
  category_id: Category.where(name: 'Crop Tops').first.id
)

pattern_shirt = Product.create!(
  name: 'Boyfriend T-Shirt with Penguin Print',
  price: '29.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/6/2/3/1/4681326/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/6/2/3/1/4681326/image2xl.jpg',
  category_id: Category.where(name: 'T-Shirts').first.id
)

summer_dress = Product.create!(
  name: 'White Summer Dress',
  price: '39.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/3/6/1/9/4279163/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/3/6/1/9/4279163/image2xl.jpg',
  category_id: Category.where(name: 'Casual Dresses').first.id
)

summer_dress = Product.create!(
  name: 'White Summer Dress',
  price: '39.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/3/6/1/9/4279163/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/3/6/1/9/4279163/image2xl.jpg',
  category_id: Category.where(name: 'Dresses').first.id
)

summer_dress = Product.create!(
  name: 'Shift Dress in Cat Print',
  price: '59.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/0/3/0/2/4282030/print/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/3/0/2/4282030/image2xl.jpg',
  category_id: Category.where(name: 'Casual Dresses').first.id
)

summer_dress = Product.create!(
  name: 'Shift Dress in Cat Print',
  price: '59.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/0/3/0/2/4282030/print/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/3/0/2/4282030/image2xl.jpg',
  category_id: Category.where(name: 'Sale').first.id
)

summer_dress = Product.create!(
  name: 'Shift Dress in Cat Print',
  price: '59.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/0/3/0/2/4282030/print/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/3/0/2/4282030/image2xl.jpg',
  category_id: Category.where(name: 'New In').first.id
)

summer_dress = Product.create!(
  name: 'Vintage Polo Shift In Floral Print',
  price: '59.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/1/4/2/7/4157241/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/1/4/2/7/4157241/image4xl.jpg',
  category_id: Category.where(name: 'Casual Dresses').first.id
)

summer_dress = Product.create!(
  name: 'Vintage Polo Shift In Floral Print',
  price: '59.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/1/4/2/7/4157241/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/1/4/2/7/4157241/image4xl.jpg',
  category_id: Category.where(name: 'Dresses').first.id
)

summer_dress = Product.create!(
  name: 'Vintage Polo Shift In Floral Print',
  price: '59.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/1/4/2/7/4157241/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/1/4/2/7/4157241/image4xl.jpg',
  category_id: Category.where(name: 'New In').first.id
)

summer_dress = Product.create!(
  name: 'Vintage Polo Shift In Floral Print',
  price: '59.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/1/4/2/7/4157241/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/1/4/2/7/4157241/image4xl.jpg',
  category_id: Category.where(name: 'Sale').first.id
)

summer_dress_blue = Product.create!(
  name: 'Crochet Waist Insert Beach Dress',
  price: '39.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/0/8/1/9/4279180/lightblue/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/8/1/9/4279180/image2xl.jpg',
  category_id: Category.where(name: 'Casual Dresses').first.id
)

summer_dress_blue = Product.create!(
  name: 'Crochet Waist Insert Beach Dress',
  price: '39.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/0/8/1/9/4279180/lightblue/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/8/1/9/4279180/image2xl.jpg',
  category_id: Category.where(name: 'Dresses').first.id
)

maxi_dress = Product.create!(
  name: 'Seamed Detail Maxi Dress',
  price: '79.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/7/3/7/5/4395737/pink/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/3/7/5/4395737/image2xl.jpg',
  category_id: Category.where(name: 'New In').first.id
)

maxi_dress = Product.create!(
  name: 'Seamed Detail Maxi Dress',
  price: '79.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/7/3/7/5/4395737/pink/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/3/7/5/4395737/image2xl.jpg',
  category_id: Category.where(name: 'Dresses').first.id
)

maxi_dress = Product.create!(
  name: 'Seamed Detail Maxi Dress',
  price: '79.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/7/3/7/5/4395737/pink/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/3/7/5/4395737/image2xl.jpg',
  category_id: Category.where(name: 'Maxi Dresses').first.id
)

maxi_dress = Product.create!(
  name: 'Virgos Lounge Adrienne Maxi Dress',
  price: '139.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/8/4/5/4/4204548/yellow/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/8/4/5/4/4204548/image2xl.jpg',
  category_id: Category.where(name: 'Maxi Dresses').first.id
)

maxi_dress = Product.create!(
  name: 'Virgos Lounge Adrienne Maxi Dress',
  price: '139.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/8/4/5/4/4204548/yellow/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/8/4/5/4/4204548/image2xl.jpg',
  category_id: Category.where(name: 'Dresses').first.id
)

maxi_dress = Product.create!(
  name: 'Virgos Lounge Adrienne Maxi Dress',
  price: '139.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/8/4/5/4/4204548/yellow/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/8/4/5/4/4204548/image2xl.jpg',
  category_id: Category.where(name: 'New In').first.id
)

maxi_dress = Product.create!(
  name: 'Virgos Lounge Adrienne Maxi Dress',
  price: '139.99',
  size: '8',
  description: "95% Polyester, 5% Elastane, Lightweight fabric, Round neckline, Scoop back, Close cut bodycon fit.
  Our model wears a UK 8/EU 36/US 4 and is 175 cm/5'9” tall. Machine washable.",
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/8/4/5/4/4204548/yellow/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/8/4/5/4/4204548/image2xl.jpg',
  category_id: Category.where(name: 'Sale').first.id
)

green_dress = Product.create!(
  name: 'Midi Skater Dress in Bonded Texture',
  price: '79.99',
  size: '8',
  description: "Green summer mid-dress" ,
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/2/4/0/8/4258042/mint/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/2/4/0/8/4258042/image2xl.jpg',
  category_id: Category.where(name: 'Casual Dresses').first.id
)

green_dress = Product.create!(
  name: 'Midi Skater Dress in Bonded Texture',
  price: '79.99',
  size: '8',
  description: "Green summer mid-dress" ,
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/2/4/0/8/4258042/mint/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/2/4/0/8/4258042/image2xl.jpg',
  category_id: Category.where(name: 'Dresses').first.id
)

green_dress = Product.create!(
  name: 'Midi Skater Dress in Bonded Texture',
  price: '79.99',
  size: '8',
  description: 'Green summer mid-dress',
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/2/4/0/8/4258042/mint/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/2/4/0/8/4258042/image2xl.jpg',
  category_id: Category.where(name: 'New In').first.id
)

party_dress = Product.create!(
  name: 'Black and White Deep V Dress',
  price: '79.99',
  size: '8',
  description: 'black and white dress',
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/0/5/1/0/4470150/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/5/1/0/4470150/image2xl.jpg',
  category_id: Category.where(name: 'Party Dresses').first.id
)

party_dress = Product.create!(
  name: 'Black and White Deep V Dress',
  price: '79.99',
  size: '8',
  description: 'black and white dress',
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/0/5/1/0/4470150/white/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/5/1/0/4470150/image2xl.jpg',
  category_id: Category.where(name: 'Dresses').first.id
)

party_dress = Product.create!(
  name: 'Textured Dress in Floral Mirror Print',
  price: '79.99',
  size: '8',
  description: 'black and white dress',
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/7/3/2/9/4269237/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/3/2/9/4269237/image2xl.jpg',
  category_id: Category.where(name: 'Party Dresses').first.id
)

party_dress = Product.create!(
  name: 'Textured Dress in Floral Mirror Print',
  price: '79.99',
  size: '8',
  description: 'black and white dress',
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/7/3/2/9/4269237/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/3/2/9/4269237/image2xl.jpg',
  category_id: Category.where(name: 'New In').first.id
)

party_dress = Product.create!(
  name: 'Textured Dress in Floral Mirror Print',
  price: '79.99',
  size: '8',
  description: 'black and white dress',
  brand: 'Kookai',
  
  image: 'http://images.asos-media.com/inv/media/7/3/2/9/4269237/multi/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/7/3/2/9/4269237/image2xl.jpg',
  category_id: Category.where(name: 'Dresses').first.id
)

jumpsuit = Product.create!(
  name: 'Playsuit With Embellishment',
  price: '89.99',
  size: '8',
  description: 'Body: 73% Polyester, 18% Viscose, 9% Elastane, Body Lining: 100% Polyester, Contrast: 100% Polyester.',
  brand: 'ASOS',
  
  image: 'http://images.asos-media.com/inv/media/0/8/7/5/4385780/nude/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/8/7/5/4385780/image2xl.jpg',
  category_id: Category.where(name: 'Playsuits').first.id
)

jumpsuit = Product.create!(
  name: 'Playsuit With Embellishment',
  price: '89.99',
  size: '8',
  description: 'Body: 73% Polyester, 18% Viscose, 9% Elastane, Body Lining: 100% Polyester, Contrast: 100% Polyester.',
  brand: 'ASOS',
  
  image: 'http://images.asos-media.com/inv/media/0/8/7/5/4385780/nude/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/0/8/7/5/4385780/image2xl.jpg',
  category_id: Category.where(name: 'Sale').first.id
)

black_pant = Product.create!(
  name: 'Warehouse Leather Peg Pant',
  price: '279.99',
  size: '8',
  description: 'Body: 100% Real Leather, Lining: 100% Polyester.',
  brand: 'ASOS',
  
  image: 'http://images.asos-media.com/inv/media/4/4/3/8/4258344/black/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/4/4/3/8/4258344/image2xl.jpg',
  category_id: Category.where(name: 'Pants').first.id
)

black_pant = Product.create!(
  name: 'Warehouse Leather Peg Pant',
  price: '279.99',
  size: '8',
  description: 'Body: 100% Real Leather, Lining: 100% Polyester.',
  brand: 'ASOS',
  
  image: 'http://images.asos-media.com/inv/media/4/4/3/8/4258344/black/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/4/4/3/8/4258344/image2xl.jpg',
  category_id: Category.where(name: 'Bottoms').first.id
)

pattern_pant = Product.create!(
  name: 'Warehouse Jungle Print Pants',
  price: '64.99',
  size: '8',
  description: 'Body: 96% Viscose, 4% Elastane',
  brand: 'ASOS',
  
  image: 'http://images.asos-media.com/inv/media/4/5/3/7/4387354/blackandwhite/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/4/5/3/7/4387354/image2xl.jpg',
  category_id: Category.where(name: 'Pants').first.id
)

pattern_pant = Product.create!(
  name: 'Warehouse Jungle Print Pants',
  price: '64.99',
  size: '8',
  description: 'Body: 96% Viscose, 4% Elastane',
  brand: 'ASOS',
  
  image: 'http://images.asos-media.com/inv/media/4/5/3/7/4387354/blackandwhite/image1xl.jpg',
  image1: 'http://images.asos-media.com/inv/media/4/5/3/7/4387354/image2xl.jpg',
  category_id: Category.where(name: 'Bottoms').first.id
)

#annies_cart = Cart.create :user_id => annie.id

# annies_cart.products << denim_jacket
# annies_cart.products << green_shirt
