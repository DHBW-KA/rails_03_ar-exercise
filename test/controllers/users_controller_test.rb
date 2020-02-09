require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_path
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get new_user_path
    assert_response :success
    assert_select 'form.ui.form'
  end

  # Hint: attr_accessor :password
  test "should create user" do
    assert_difference('User.count') do
      post users_path, params: {user: {city: @user.city, email: @user.email,
                                             name: @user.name, password: @user.password,
                                             street: @user.street, account_ids: [accounts(:one).id]}}
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get user_path(@user)
    assert_response :success
  end

  test "should get edit" do
    get user_path(@user)
    assert_response :success
  end

  # Hint: attr_accessor :password
  test "should update user" do
    patch user_path(@user), params: {user: {city: @user.city, email: @user.email,
                                            name: @user.name, password: @user.password,
                                            street: @user.street, account_ids: [accounts(:one).id]}}
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_path(@user)
    end

    assert_redirected_to users_path
  end
end
