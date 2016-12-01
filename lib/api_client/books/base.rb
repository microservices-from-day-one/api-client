module ApiClient
  module Books

    class Base < JsonApiClient::Resource
      def self.site
        @site ||= "#{ServiceDiscovery.url_for(:books)}/v1"
      end
    end

  end
end

require 'api_client/books/book'
require 'api_client/books/category'
