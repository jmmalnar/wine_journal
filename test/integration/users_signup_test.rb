require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test 'invalid signup information' do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: {
          firstname: '',
          lastname: '',
          email: 'user@invalid',
          password: 'foo',
          password_confirmation: 'bar'
      }
    end
    assert_template 'users/new'
  end

  test 'valid signup information' do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: {
          firstname: 'Test',
          lastname: 'User',
          email: 'test@email.com',
          password: 'password',
          password_confirmation: 'password'
      }
    end
    assert_template 'users/show'
  end

end