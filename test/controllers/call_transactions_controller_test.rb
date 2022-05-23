require "test_helper"

class CallTransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get call_transactions_index_url
    assert_response :success
  end
end
