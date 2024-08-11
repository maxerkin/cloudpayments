module Cloudpayments
  module Client
    module Request
      module Receipts
        module Correction
          class Create < Cloudpayments::Client::Request::Base
            attr_reader :params

            def initialize(params)
              @params = params
            end

            def call
              post("kkt/correction-receipt", params)
            end
          end
        end
      end
    end
  end
end
