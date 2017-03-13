require 'hashids'
module Jekyll
    class PermalinkRewriter < Generator
        safe true
        priority :low

        def generate(site)
            @site = site
            site.posts.each do |item|
                if not item.data['permalink']
                    hash = item.data['hash']
                    if not hash
                        hashids = Hashids.new item.title # salt
                        hash = hashids.encode(item.date)
                        item.data['hash'] = hash
                    end
                    categories = item.categories.join('/') # need to sanitize? Utils.ascii_sanitize()
                    item.data['permalink'] = '/' + categories + item.slug + '-' + hash #+ '/'
                end
            end
        end
    end
end
