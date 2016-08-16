require 'rails_helper'

RSpec.describe School, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it { is_expected.to validate_uniqueness_of(:name) }
end
