class Activity < ApplicationRecord
  belongs_to :guide
  has_many :scores, as: :scoreable
  belongs_to :city
  belongs_to :language
end
