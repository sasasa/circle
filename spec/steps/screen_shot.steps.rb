step ':url を表示' do |url|
  visit(url)
end

step 'スクリーンショットを撮って :filename に保存' do |filename|
  page.save_screenshot "./#{filename}"
end

