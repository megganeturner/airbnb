# == Schema Information
#
# Table name: bookings
#
#  id         :integer          not null, primary key
#  start_date :datetime
#  end_date   :datetime
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  home_id    :integer
#

class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :home
end
