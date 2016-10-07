User.destroy_all
u1 = User.new :first_name => 'Johnny', :last_name => 'Smith', :email => 'johnny@gmail.com'
u2 = User.new :first_name => 'Katie', :last_name => 'Jones', :email => 'katie@gmail.com'


Booking.destroy_all
b1 = Booking.new :start_date => '2016-12-01', :end_date => '2017-01-05'
b2 = Booking.new :start_date => '2016-10-30', :end_date => '2016-11-12'

City.destroy_all
c1 = City.new :name => 'Sydney', :country => 'Australia', :image => 'https://lonelyplanetimages.imgix.net/mastheads/65830387.jpg?sharp=10&vib=20&w=1200'
c2 = City.new :name => 'Moscow', :country => 'Russia', :image => 'http://cdn.ek.aero/english/images/Moscow-1_tcm233-2369440.jpg'

Home.destroy_all
h1 = Home.new :name => 'The Tree House', :max_guests => 8, :bathrooms => 3, :check_in => '12:00', :check_out => '12:00', :description => 'Trees and stuff', :image => 'http://www.treehousepoint.com/images/treehouse-point.jpg', :price => 100
h2 = Home.new :name => 'The Shack', :max_guests => 2, :bathrooms => 1, :check_in => '14:00', :check_out => '10:00', :description => 'House on beach', :image => 'http://www.hotel-r.net/im/hotel/au/beach-house-6.jpg', :price => 200
