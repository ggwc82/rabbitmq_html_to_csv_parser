require 'nokogiri'
require 'csv'

doc = Nokogiri::HTML(open('./rabbitmq_dql.htm'))
xpath = '//html//body//div//div//div//div//div//div//table//tbody//tr//td/pre'
count = 0
CSV.open("dql_events.csv", "w") do |csv|
  doc.search(xpath).each do |payload|
    count += 1
    puts "COUNT #{count}"
    csv << [count, payload.content] # if payload.content.match(/ClientName/)
    puts payload.content
  end
end
