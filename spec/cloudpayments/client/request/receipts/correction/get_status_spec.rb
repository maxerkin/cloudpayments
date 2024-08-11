require "spec_helper"

describe Cloudpayments::Client::Request::Receipts::Correction::GetStatus do
  describe "#call" do
    it "sends valid request" do
      Cloudpayments.configure do |config|
        config.login = "alex"
        config.password = "1234"
      end

      stub_request(:post, "https://api.cloudpayments.ru/kkt/correction-receipt/status/get")
      id = "A1vd0Mf"
      params = { "Id" => id }

      described_class.new(id).call

      expect(WebMock).
        to have_requested(:post, "https://api.cloudpayments.ru/kkt/correction-receipt/status/get").
        with(body: params, headers: { "Authorization" => "Basic YWxleDoxMjM0" })
    end
  end
end
