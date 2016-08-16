RSpec.configure do |config|
  # For javascript Test
  config.use_transactional_fixtures = false

  # 処理が高速なので、普段はtransactionを使用する
  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  # jsオプションが有効な時のテストはtruncationを使用
  config.before(:each, :js => true) do
    DatabaseCleaner.strategy = :truncation
  end

  # database cleaner の設定
  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end

end