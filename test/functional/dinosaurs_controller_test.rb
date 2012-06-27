require 'test_helper'

class DinosaursControllerTest < ActionController::TestCase
  setup do
    @dinosaur = dinosaurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dinosaurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dinosaur" do
    assert_difference('Dinosaur.count') do
      post :create, dinosaur: @dinosaur.attributes
    end

    assert_redirected_to dinosaur_path(assigns(:dinosaur))
  end

  test "should show dinosaur" do
    get :show, id: @dinosaur.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dinosaur.to_param
    assert_response :success
  end

  test "should update dinosaur" do
    put :update, id: @dinosaur.to_param, dinosaur: @dinosaur.attributes
    assert_redirected_to dinosaur_path(assigns(:dinosaur))
  end

  test "should destroy dinosaur" do
    assert_difference('Dinosaur.count', -1) do
      delete :destroy, id: @dinosaur.to_param
    end

    assert_redirected_to dinosaurs_path
  end
end
