# == Schema Information
#
# Table name: killer_categories
#
#  id          :integer          not null, primary key
#  killer_id   :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class KillerCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
