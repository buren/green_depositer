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

require 'test_helper'

class DepositTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
