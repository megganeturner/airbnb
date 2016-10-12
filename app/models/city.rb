# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  country    :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :text
#

class City < ActiveRecord::Base
  has_many :homes
end
