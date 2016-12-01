module ApiClient
  module Books

    class Book < Base
      custom_endpoint :related, on: :member, request_method: :get
    end

  end
end
