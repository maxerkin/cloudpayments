module Cloudpayments
  module Client
    module Request
      module Receipts
        module Correction
          class GetStatus < Cloudpayments::Client::Request::Base
            attr_reader :id

            def initialize(id)
              @id = id
            end

            def call
              post("kkt/correction-receipt/status/get", { Id: id })
            end
          end
        end
      end
    end
  end
end
