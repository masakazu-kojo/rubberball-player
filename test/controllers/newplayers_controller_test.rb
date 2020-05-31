require 'test_helper'

class NewplayersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newplayers_index_url
    assert_response :success
  end

end
