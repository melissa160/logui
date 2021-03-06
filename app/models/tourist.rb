class Tourist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # asociations
  has_many :tourist_languages
  belongs_to :city
  has_many :languages, through: :tourist_languages
end
