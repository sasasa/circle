class UserLesson < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :lesson, optional: true
end
