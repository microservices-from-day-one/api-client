module ApiClient

  class PurchasesService
    def self.add_item_to_cart(cart_id:, params:, headers: {})
      post_params_to_endpoint(params, headers, "/carts/#{cart_id}/items")
    end

    def self.remove_item_from_cart(cart_id:, item_id:, headers: {})
      url = File.join(host, "/carts/#{cart_id}/items/#{item_id}")
      Faraday.delete(url, {}, headers)
    end

    def self.host
      @host ||= ServiceDiscovery.url_for(:purchases)
    end

    def self.post_params_to_endpoint(params, headers, endpoint)
      url = File.join(host, endpoint)
      Faraday.post(url, params, headers)
    end
  end

end
