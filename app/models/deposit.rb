# == Schema Information
#
# Table name: deposits
#
#  id         :integer          not null, primary key
#  quantity   :float
#  unit       :string
#  category   :string
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Deposit < ApplicationRecord
  validates :quantity, presence: true, numericality: true
  validates :unit, presence: true, length: { minimum: 2 }
  validates :category, presence: true, length: { minimum: 2 }
  validates :latitude, presence: true, numericality: true
  validates :longitude, presence: true, numericality: true

  belongs_to :user, optional: true

  CATEGORIES = %w(Pant Clothes Glass Plastic Carton)
end
