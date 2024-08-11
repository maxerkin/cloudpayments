require "faraday"
require "json"
require_relative "cloudpayments/configuration"
require_relative "cloudpayments/connection"
require_relative "cloudpayments/client/response/base"
require_relative "cloudpayments/client/response/body"
require_relative "cloudpayments/client/request/base"
require_relative "cloudpayments/client/request/receipts/create"
require_relative "cloudpayments/client/request/receipts/get_status"
require_relative "cloudpayments/client/request/receipts/get"
require_relative "cloudpayments/client/request/receipts/correction/create"
require_relative "cloudpayments/client/request/receipts/correction/get_status"
require_relative "cloudpayments/client/request/receipts/correction/get"

module Cloudpayments
  class << self
    def configuration
      @configuration ||= Cloudpayments::Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end
