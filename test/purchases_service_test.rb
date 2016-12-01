# -*- encoding : utf-8 -*-
require "test_helper"

describe ApiClient::PurchasesService do
  describe "#create_cart" do
    it "creates a new cart and returns metadata" do
      cart = ApiClient::PurchasesService.create_cart
      assert_equal ["cart_id", "expires_at", "total", "items_count", "items"], cart.keys
    end
  end

  describe "#get_cart" do
    before do
      @cart_id = valid_cart_id
    end

    it "gets data for a valid cart" do
      cart = ApiClient::PurchasesService.get_cart(@cart_id)
      assert_equal ["cart_id", "expires_at", "total", "items_count", "items"], cart.keys
    end
  end

  describe "#add_item_to_cart" do
    before do
      @cart_id = valid_cart_id
    end

    it "adds an item to a cart" do
      item = {
        item_id: SecureRandom.uuid,
        price: 100,
        quantity: 5
      }
      response = ApiClient::PurchasesService.add_item_to_cart(cart_id: @cart_id, params: {item: item})
      assert_equal 201, response.status
      # assert data returned by service
    end
  end

  describe "#remove_item_from_cart" do
    before do
      @cart_id = valid_cart_id
      @item = {
        item_id: SecureRandom.uuid,
        price: 100,
        quantity: 5
      }
      ApiClient::PurchasesService.add_item_to_cart(cart_id: @cart_id, params: {item: @item})
    end

    it "removes an item from a cart" do
      response = ApiClient::PurchasesService.remove_item_from_cart(cart_id: @cart_id, item_id: @item[:item_id])
      assert_equal 200, response.status
    end
  end

  def valid_cart_id
    ApiClient::PurchasesService.create_cart["cart_id"]
  end
end
