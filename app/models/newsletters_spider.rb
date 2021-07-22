class NewslettersSpider < Kimurai::Base
    @name = 'newsletters_spider'
    @engine = :mechanize

    def self.process(url)
        @start_urls = [url]
        self.crawl!
    end

    def parse(response, url:, data: {})
        response.css("div#content #content-core div.entries article.entry").each do |newsletter|
            item = {}
            
            item[:fonte]               = "Cultura"
            item[:url_noticia]         = newsletter.css('header span.summary a.state-published.url').attr('href')&.text&.squish
            item[:titulo_noticia]      = newsletter.css('header span.summary a.state-published.url')&.text&.squish
            item[:data_publicacao]     = newsletter.css('header span.documentByLine')&.text&.squish
            item[:data_coleta]         = Time.now.strftime("%Y/%m/%d %H:%M:S")
            item[:corpo_noticia]       = newsletter.css('p.description.discreet')&.text&.squish

            Newsletter.find_or_create_by(item)
        end

    end
end