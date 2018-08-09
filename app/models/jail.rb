# == Schema Information
#
# Table name: jails
#
#  id         :integer          not null, primary key
#  name       :string
#  banner_url :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Jail < ApplicationRecord
  validates :name, presence: true
  validates :banner_url, presence: true
  has_many :killers, dependent: :destroy
end

