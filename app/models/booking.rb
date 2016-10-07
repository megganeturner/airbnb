# == Schema Information
#
# Table name: bookings
#
#  id         :integer          not null, primary key
#  start_date :date
#  end_date   :date
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Booking < ActiveRecord::Base
end
