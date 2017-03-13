# this is ignored by github pages, but I'm using it locally to generate the hashes
# and to test it as to eventually build it up into a gem
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
                    if not hash # should we be able to overide the auto generated hash?
                        salt = item.title
                        hashids = Hashids.new salt
                        hash = hashids.encode(item.date)
                        # in case we can't use hashids
                        #hash = Digest::MD5.hexdigest(salt + item.date.to_s)
                        item.data['hash'] = hash
                    end
                    categories = item.categories.join('/') # need to sanitize? Utils.ascii_sanitize()
                    item.data['permalink'] = '/' + categories + item.slug + '-' + hash #+ '/'
                end
            end
        end
    end
end
