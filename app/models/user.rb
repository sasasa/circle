class User < ActiveRecord::Base
  validates :name,
    presence: true,
    length: {maximum: 20}
  validates :age,
    presence: true,
    numericality: {greater_than_or_equal_to: 0,
                      less_than_or_equal_to: 1000}
end