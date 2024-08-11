module Cloudpayments
  module Client
    module Request
      module Receipts
        module Correction
          class Get < Cloudpayments::Client::Request::Base
            attr_reader :id

            def initialize(id)
              @id = id
            end

            def call
              post("kkt/correction-receipt/get", { Id: id })
            end
          end
        end
      end
    end
  end
end
