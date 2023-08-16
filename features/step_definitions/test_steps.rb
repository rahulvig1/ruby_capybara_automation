Given('I visit {string}') do |string|
    @home_page = AmazonMain.new
    @home_page.open_url(string)
end
  
When('I search for {string}') do |string|
    @home_page.search_item(string)
end

Then('I should see search results for {string}') do |string|
    expect((first('.a-text-normal').text)).to include('results for "' + string + '"')
end