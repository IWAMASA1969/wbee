require 'test_helper'

class DoTaskControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get do_task_create_url
    assert_response :success
  end

end
