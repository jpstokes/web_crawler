require 'nokogiri'
require 'open-uri'
require 'anemone'

# Crawl website and find each page contained in site
Anemone.crawl('url to a site') do |anemone|
  anemone.on_every_page do |page|

    # Save page to doc
    unless page.doc.nil?
      doc = page.doc

      # Find and print each link on page
      doc.css('a').each do |link|
        unless link.text == ""
          p link.text.strip
        end
      end
    end
  end
end
