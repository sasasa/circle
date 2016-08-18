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

FactoryGirl.define do
  factory :user do
    admin false
    name "MyString"
    email "MyString"
    url "MyString"
    phone "MyString"
    password "MyString"
    comment "MyText"
    age 1
    study_hour 1
    volume 1.5
    login_time { DateTime.now }
    birthday { Date.today }
    wake_up_time { Time.now }
    country "MyString"
    time_zone "JST"
    school nil
  end
end
