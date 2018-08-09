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

class KillerCategory < ApplicationRecord
  belongs_to :killer
  belongs_to :category
end
