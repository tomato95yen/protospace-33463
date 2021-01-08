class User < ApplicationRecord
  has_many :prototypes
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
