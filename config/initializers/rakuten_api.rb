RakutenWebService.configure do |c| 
  c.application_id = ENV['Rakuten_API_KEY']
  c.affiliate_id = ENV['Rakuten_AFFILIATE_KEY']
  c.max_retries = 3
  c.debug = true
end 