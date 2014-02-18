desc "Fetch words for slugs"
task :fetch_slugs => :environment do
  require 'nokogiri'
  require 'open-uri'
  Slug.all.each do |slug|
    url = "http://www.massrelevance.com/"
    doc = Nokogiri::HTML(open(url))
    word = doc.at_css("h2").text.split(' ').sample
    slug.update_attribute(:word, word)
  end
end