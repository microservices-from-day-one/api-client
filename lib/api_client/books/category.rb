module ApiClient
  module Books

    class Category < Base
      # GET /v1/categories/featured
      custom_endpoint :featured, on: :collection, request_method: :get
    end

  end
end
