require 'test_helper'

class CootiesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cooties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cootie" do
    assert_difference('Cootie.count') do
      post :create, :cootie => { }
    end

    assert_redirected_to cootie_path(assigns(:cootie))
  end

  test "should show cootie" do
    get :show, :id => cooties(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cooties(:one).to_param
    assert_response :success
  end

  test "should update cootie" do
    put :update, :id => cooties(:one).to_param, :cootie => { }
    assert_redirected_to cootie_path(assigns(:cootie))
  end

  test "should destroy cootie" do
    assert_difference('Cootie.count', -1) do
      delete :destroy, :id => cooties(:one).to_param
    end

    assert_redirected_to cooties_path
  end
end
