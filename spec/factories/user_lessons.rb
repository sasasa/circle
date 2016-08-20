# == Schema Information
#
# Table name: user_lessons
#
#  id         :integer          not null, primary key
#  score      :integer
#  user_id    :integer
#  lesson_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :user_lesson do
    score { Faker::Number.between(29, 100) }
    user nil
    lesson nil
  end
end
