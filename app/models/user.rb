# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  admin        :boolean
#  name         :string
#  email        :string
#  url          :string
#  phone        :string
#  password     :string
#  comment      :text
#  age          :integer
#  study_hour   :integer
#  volume       :float
#  login_time   :datetime
#  birthday     :date
#  wake_up_time :time
#  country      :string
#  time_zone    :string
#  school_id    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

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
