require 'test_helper'

class DiaryEntriesControllerTest < ActionController::TestCase
  setup do
    @diary_entry = diary_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diary_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diary_entry" do
    assert_difference('DiaryEntry.count') do
      post :create, diary_entry: { description: @diary_entry.description, name: @diary_entry.name }
    end

    assert_redirected_to diary_entry_path(assigns(:diary_entry))
  end

  test "should show diary_entry" do
    get :show, id: @diary_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diary_entry
    assert_response :success
  end

  test "should update diary_entry" do
    put :update, id: @diary_entry, diary_entry: { description: @diary_entry.description, name: @diary_entry.name }
    assert_redirected_to diary_entry_path(assigns(:diary_entry))
  end

  test "should destroy diary_entry" do
    assert_difference('DiaryEntry.count', -1) do
      delete :destroy, id: @diary_entry
    end

    assert_redirected_to diary_entries_path
  end
end
