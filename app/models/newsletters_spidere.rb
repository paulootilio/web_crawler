class NewslettersSpidere < Kimurai::Base
    @name = 'newsletters_spidere'
    @engine = :mechanize

    def self.process(url)
        @start_urls = [url]
        self.crawl!
    end
    
    def parse(response, url:, data: {})
        response.css("div#content #content-core article.tileItem.visualIEFloatFix.tile-collective-nitf-content").each do |newsletter|
            item = {}
            
            item[:fonte]               = "Desenvolvimento Social"
            item[:url_noticia]         = newsletter.css('div.tileContent h2.tileHeadline a.summary.url').attr('href')&.text&.squish
            item[:titulo_noticia]      = newsletter.css('div.tileContent h2.tileHeadline a.summary.url')&.text&.squish
            item[:data_publicacao]     = newsletter.css('span.documentByLine span.summary-view-icon')&.text&.squish
            item[:data_coleta]         = Time.now.strftime("%Y/%m/%d %H:%M:S")
            item[:corpo_noticia]       = newsletter.css('div.tileContent p.tileBody span.description')&.text&.squish

            Newsletter.find_or_create_by(item)
        end

    end
end