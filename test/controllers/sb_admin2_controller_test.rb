require 'test_helper'

class SbAdmin2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sb_admin2_index_url
    assert_response :success
  end

end
