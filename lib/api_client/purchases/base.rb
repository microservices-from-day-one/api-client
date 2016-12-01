module ApiClient
  module Purchases

    class Base < JsonApiClient::Resource
      def self.site
        @site ||= "#{ServiceDiscovery.url_for(:purchases)}/v1"
      end
    end

  end
end

require 'api_client/purchases/cart'
require 'api_client/purchases/item'
