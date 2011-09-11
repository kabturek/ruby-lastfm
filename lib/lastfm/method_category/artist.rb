class Lastfm
  module MethodCategory
    class Artist < Base
      regular_method :get_info, [:artist], [[:lang, nil], [:autocorrect, nil]] do |response|
        response.xml['artist']
      end
      regular_method :get_events, [:artist], [] do |response|
        response.xml['events']['event']
      end
      regular_method :get_top_tags, [:artist], [] do |response|
        response.xml['toptags']['tag']
      end
      regular_method :get_images, [:artist], [[:limit, nil], [:page, nil]] do |response|
        response.xml['images']['image']
      end
      regular_method :search, [:artist], [[:limit, nil], [:page, nil]] do |response|
        response.xml['results']
      end
    end
  end
end
