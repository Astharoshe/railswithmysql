require 'test_helper'

class ImportexcelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get importexcels_index_url
    assert_response :success
  end

end
