module ApiClient
  module Reviews

    class Base < JsonApiClient::Resource
      def self.site
        @site ||= "#{ServiceDiscovery.url_for(:reviews)}/v1"
      end
    end

  end
end

require 'api_client/reviews/review'
