require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count', 1 do
      post users_path, params: { user: { name:  "aashish",
                                         email: "ippiliaashish@gmail.com",
                                         password:              "aashish11",
                                         password_confirmation: "aashish11" } }
    end
	follow_redirect!
    assert_template 'users/new'
	assert_not flash.FILL_IN
  end
end