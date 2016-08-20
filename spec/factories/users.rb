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
    admin { Faker::Boolean.boolean(0.2) }
    name { Faker::Name.name }
    email { Faker::Internet.free_email }
    url { Faker::Internet.url }
    phone { Faker::PhoneNumber.phone_number }
    password { Faker::Internet.password(10, 20) }
    comment { Faker::Lorem.paragraph(2, false, 4) }
    age { Faker::Number.between(18, 26) }
    study_hour { Faker::Number.between(0, 12) }
    volume { Faker::Number.decimal(2, 2) }
    login_time { Faker::Time.between(10.days.ago, Date.today, :all) }
    birthday { Faker::Date.between(26.years.ago, 18.years.ago) }
    wake_up_time { Faker::Time.between(23.hours.ago, 1.hours.ago, :morning) }
    country { Faker::Address.country }
    time_zone { Faker::Address.time_zone }
    school nil
  end
end
