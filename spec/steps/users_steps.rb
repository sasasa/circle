step 'ユーザー管理の一覧画面を開く' do
  visit '/users'
end

step '画面を目視' do
  save_and_open_page
end

step ':name リンクをクリックする' do |name|
  first(:link, name).click
end

step ':name ボタンをクリックする' do |name|
  first(:button, name).click
end

step 'ユーザー管理の新規登録画面が表示される' do
  current_path = URI.parse(current_url).path
  expect(current_path).to eq '/users/new'
end

step 'ユーザー管理の詳細画面が表示される' do
  current_path = URI.parse(current_url).path
  expect(current_path).to eq "/users/#{User.last.id}"
end

step 'ユーザー管理の新規登録画面を開く' do
  visit '/users/new'
end

step ':field に :value と入力する' do |field, value|
  fill_in(field, :with => value)
end
