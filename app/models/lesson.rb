# == Schema Information
#
# Table name: lessons
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Lesson < ApplicationRecord
  has_many :user_lessons
  has_many :users, through: :user_lessons
  validates :name, uniqueness: true
end
