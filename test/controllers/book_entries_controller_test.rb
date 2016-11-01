require 'test_helper'

class BookEntriesControllerTest < ActionController::TestCase
  setup do
    @book_entry = book_entries(:one)
  end

  test "should get index" do
    get :index, account_id: accounts(:one)
    assert_response :success
    assert_not_nil assigns(:book_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_entry" do
    assert_difference('BookEntry.count') do
      post :create, book_entry: { amount: @book_entry.amount,
                                  description: @book_entry.description,
                                  account_from_id: @book_entry.account_from_id,
                                  account_to_id: @book_entry.account_to_id
      }
      assert_equal({}, assigns(:book_entry).errors.messages)
    end

    assert_redirected_to book_entry_path(assigns(:book_entry))
  end

  test "should show book_entry" do
    get :show, id: @book_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_entry
    assert_response :success
  end

  test "should update book_entry" do
    patch :update, id: @book_entry, book_entry: { amount: @book_entry.amount,
                                                  description: @book_entry.description,
                                                  account_from_id: @book_entry.account_from_id,
                                                  account_to_id: @book_entry.account_to_id }
    assert_equal({}, assigns(:book_entry).errors.messages)
    assert_redirected_to book_entry_path(assigns(:book_entry))
  end

  test "should destroy book_entry" do
    assert_difference('BookEntry.count', -1) do
      delete :destroy, id: @book_entry
    end

    assert_redirected_to book_entries_path
  end
end
