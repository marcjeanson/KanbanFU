Then /^the response should be a collection of "(.+)" with:$/ do |root, table|
  table.hashes.each do |row|
    json = row.to_json
    path = "#{root}/#{row['id'].to_i - 1}"
    Then(%Q{the JSON at "#{path}" should be #{json}})
  end
end

Then /^the response should be a "([^"]+)" with:$/ do |root, table|
  row = table.hashes.first
  Then(%Q{the JSON at "#{root}" should be #{row.to_json}})
end

Then /^the response should be "([^"]*)"$/ do |status|
  page.driver.status_code.should == status.to_i
end
