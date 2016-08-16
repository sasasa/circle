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
    login_time "2016-08-16 16:11:00"
    birthday "2016-08-16"
    wake_up_time "2016-08-16 16:11:00"
    country "MyString"
    time_zone "MyString"
    school nil
  end
end
