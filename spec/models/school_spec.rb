# == Schema Information
#
# Table name: schools
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe School, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it { is_expected.to validate_uniqueness_of(:name) }
end
