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

class UserLesson < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :lesson, optional: true
end
