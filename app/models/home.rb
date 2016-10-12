# == Schema Information
#
# Table name: homes
#
#  id          :integer          not null, primary key
#  city_id     :integer
#  user_id     :integer
#  max_guests  :integer
#  bathrooms   :integer
#  check_in    :time
#  check_out   :time
#  description :text
#  image       :text
#  price       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :text
#

class Home < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  has_many :bookings
end
