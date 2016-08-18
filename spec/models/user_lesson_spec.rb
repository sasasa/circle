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

require 'rails_helper'

RSpec.describe UserLesson, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
