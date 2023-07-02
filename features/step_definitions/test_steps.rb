Given('I visit {string}') do |string|
    visit string
end
  
When('I search for {string}') do |string|
    #sleep 2 if !page.has_css('#twotabsearchtextbox')
    find('#twotabsearchtextbox').click
    find('#twotabsearchtextbox').set(string)
    find('.nav-search-submit').click
end

Then('I should see search results for {string}') do |string|
    expect((first('.a-text-normal').text)).to include('results for "' + string + '"')
end