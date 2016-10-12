User.destroy_all
u1 = User.create :first_name => 'Johnny', :last_name => 'Smith', :email => 'johnny@gmail.com', :password => 'chicken', :password_confirmation => 'chicken'
u2 = User.create :first_name => 'Katie', :last_name => 'Jones', :email => 'katie@gmail.com', :password => 'chicken', :password_confirmation => 'chicken'


Booking.destroy_all
b1 = Booking.create :start_date => '2016-12-01', :end_date => '2017-01-05'
b2 = Booking.create :start_date => '2016-10-30', :end_date => '2016-11-12'

City.destroy_all
c1 = City.create :name => 'Sydney', :country => 'Australia', :image => 'https://lonelyplanetimages.imgix.net/mastheads/65830387.jpg?sharp=10&vib=20&w=1200'
c2 = City.create :name => 'Moscow', :country => 'Russia', :image => 'https://www.hoganlovells.com/~/media/hogan-lovells/images/locations/moscow.ashx'
c3 = City.create :name => 'Tokyo', :country => 'Japan', :image => 'https://www.omm.com/~/media/images/site/locations/tokyo_780x520px.ashx'
c4 = City.create :name => 'San Francisco', :country => 'USA', :image => 'https://lonelyplanetimages.imgix.net/a/g/hi/t/9cf024dfd5c0bcb2b17f4785340145ea-san-francisco.jpg?sharp=10&vib=20&w=1200'
c5 = City.create :name => 'New York City', :country => 'USA', :image => 'https://c1.staticflickr.com/4/3865/15242798832_66f46e5792_b.jpg'
c6 = City.create :name => 'Rio de Janeiro', :country => 'Brazil', :image => 'http://brazilianexperience.com/wp-content/uploads/2015/06/Rio-de-Janeiro-at-night.jpg'
c7 = City.create :name => 'London', :country => 'England', :image => 'https://media.timeout.com/images/100644443/image.jpg'
c8 = City.create :name => 'Zanzibar', :country => 'Tanzania', :image => 'https://upload.wikimedia.org/wikipedia/commons/0/0b/Approaching_Zanzibar.jpg'
c9 = City.create :name => 'Berlin', :country => 'Germany', :image => 'http://www.shauntmax30.com/data/out/5/959638-berlin-wallpaper-1939-17-kb.jpg'
c10 = City.create :name => 'Kashmir', :country => 'India', :image => 'http://shineindiaholidays.com/wp-content/uploads/2016/08/Kashmir-gallery-2.jpg'

Home.destroy_all
h1 = Home.create :name => 'The Tree House', :max_guests => 8, :bathrooms => 3, :check_in => '12:00', :check_out => '12:00', :description => 'Trees and stuff', :image => 'http://www.treehousepoint.com/images/treehouse-point.jpg', :price => 100
h2 = Home.create :name => 'The Shack', :max_guests => 2, :bathrooms => 1, :check_in => '14:00', :check_out => '10:00', :description => 'House on beach', :image => 'http://www.hotel-r.net/im/hotel/au/beach-house-6.jpg', :price => 200
h3 = Home.create :name => 'Bamboo Forest', :max_guests => 3, :bathrooms => 1, :check_in => '14:00', :check_out => '10:00', :description => 'A tranquil oasis surrounded by young bamboo shoots', :image => 'https://images.unsplash.com/photo-1473798349978-d18a8c8dbf41?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&s=8e12701b2e3c90be57e211f98d117412'
h4 = Home.create :name => 'Tropical Getaway', :max_guests => 2, :bathrooms => 1, :check_in => '14:00', :check_out => '10:00', :description => 'Enjoy the sunshine', :image => 'https://hd.unsplash.com/uploads/141223919738065be1e88/260bdae7'
h5 = Home.create :name => 'Bustling Hideaway', :max_guests => 5, :bathrooms => 5, :check_in => '14:00', :check_out => '10:00', :description => 'Get away from the hustle and bustle of the city', :image => 'https://hd.unsplash.com/photo-1444047427283-88a67f631b3e'
h6 = Home.create :name => 'Me Casa Tu Casa', :max_guests => 12, :bathrooms => 6, :check_in => '14:00', :check_out => '10:00', :description => 'The more the merrier', :image => 'https://hd.unsplash.com/photo-1468429496510-236edfeeed4d'
h7 = Home.create :name => 'Pink Hipster', :max_guests => 2, :bathrooms => 1, :check_in => '14:00', :check_out => '10:00', :description => 'Cosy hideaway', :image => 'https://images.unsplash.com/photo-1473662423067-e88544ee8418?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&s=38c1495d3a303e8430df56588a88454c'
h8 = Home.create :name => 'Kashmir Dreams', :max_guests => 4, :bathrooms => 2, :check_in => '14:00', :check_out => '10:00', :description => 'Tucked away in the mountains, breathtaking views and complete solitude', :image => 'https://hd.unsplash.com/photo-1444201431989-0b9fa7488323'
h9 = Home.create :name => 'Sky High', :max_guests => 2, :bathrooms => 1, :check_in => '14:00', :check_out => '10:00', :description => 'Skyline views of the city', :image => 'https://images.unsplash.com/photo-1473742925119-519edfdba49d?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&s=a2ba7b0f826cccd3ada1679eaa729535'
h10 = Home.create :name => 'Cabin in the Woods', :max_guests => 3, :bathrooms => 1, :check_in => '14:00', :check_out => '10:00', :description => 'Solitude + bears', :image => 'https://hd.unsplash.com/photo-1464695110811-dcf3903dc2f4'
h11 = Home.create :name => 'Schwarzwalderkirschtörten', :max_guests => 4, :bathrooms => 1, :check_in => '14:00', :check_out => '10:00', :description => 'Black forest cherry cake for daaaays', :image => 'https://images.unsplash.com/photo-1475452524438-d6a4a3f6fdc3?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&s=66a32d830955fe0293ec308a5f6849c8'



c1.homes << h9 <<  h7
c2.homes << h5 << h10
c3.homes << h3
c4.homes << h1

c6.homes << h6

c8.homes << h2 << h4
c9.homes << h11
c10.homes << h8
