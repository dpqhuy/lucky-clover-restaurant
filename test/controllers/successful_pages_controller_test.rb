require 'test_helper'

class SuccessfulPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get successful_pages_index_url
    assert_response :success
  end

end
