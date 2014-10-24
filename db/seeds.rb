User.destroy_all

u1 = User.create!(:firstname => 'Angela', :lastname => 'Mikulasev,' :email => 'angela@angela.com', :password => 'chicken', :password_confirmation => 'chicken')

p1 = Product.create!(:name => 'jacket', :price => '$29.99', :size => '10', :description => 'demin jacket', :brand => 'bordot', :image => 'http://www.bardot.com.au/files/product/images/403527/9631jb1-denim-front-.jpg')

p2 = Product.create!(:name => 't-shirt', :price => '$19.99', :size => '8', :description => 'green shirt', :brand => 'kookai', :image => 'http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=64181961')


Category.create! name: 'accessories'
Category.create! name: 'coats & jackets'
Category.create! name: 'denim'
Category.create! name: 'designer'
Category.create! name: 'dresses'
Category.create! name: 'jumpers'
Category.create! name: 'jeans'
Category.create! name: 't-shirts'
Category.create! name: 'tanks'
Category.create! name: 'jewellery'
Category.create! name: 'cardigans'
Category.create! name: 'jumpsuits'
Category.create! name: 'shirts'
Category.create! name: 'shoes'
Category.create! name: 'shorts'
Category.create! name: 'skirts'
Category.create! name: 'swimwear'
Category.create! name: 'pants'