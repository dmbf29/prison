class Jail < ApplicationRecord
  validates :name, presence: true
  validates :banner_url, presence: true
  has_many :killers, dependent: :destroy
end

