require 'test_helper'

class DiscipleshipClassesControllerTest < ActionController::TestCase
  setup do
    @discipleship_class = discipleship_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discipleship_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discipleship_class" do
    assert_difference('DiscipleshipClass.count') do
      post :create, discipleship_class: { class_date: @discipleship_class.class_date, title: @discipleship_class.title }
    end

    assert_redirected_to discipleship_class_path(assigns(:discipleship_class))
  end

  test "should show discipleship_class" do
    get :show, id: @discipleship_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discipleship_class
    assert_response :success
  end

  test "should update discipleship_class" do
    patch :update, id: @discipleship_class, discipleship_class: { class_date: @discipleship_class.class_date, title: @discipleship_class.title }
    assert_redirected_to discipleship_class_path(assigns(:discipleship_class))
  end

  test "should destroy discipleship_class" do
    assert_difference('DiscipleshipClass.count', -1) do
      delete :destroy, id: @discipleship_class
    end

    assert_redirected_to discipleship_classes_path
  end
end
