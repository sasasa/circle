# == Schema Information
#
# Table name: user_groups
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe UserGroup, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
