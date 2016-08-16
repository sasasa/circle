class User < ApplicationRecord
  belongs_to :school, optional: true
  has_many :user_lessons
  has_many :lessons, through: :user_lessons
  has_and_belongs_to_many :groups
  validates :name,
    presence: true,
    length: {maximum: 20}
  validates :age,
    presence: true,
    numericality: {greater_than_or_equal_to: 0,
                      less_than_or_equal_to: 110}
end