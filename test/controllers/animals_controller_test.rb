require 'test_helper'

class AnimalsControllerTest < ActionController::TestCase
  setup do
    @animal = animals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:animals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create animal" do
    assert_difference('Animal.count') do
      post :create, animal: { breed_id: @animal.breed_id, egg_id: @animal.egg_id, id: @animal.id, name: @animal.name }
    end

    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should show animal" do
    get :show, id: @animal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @animal
    assert_response :success
  end

  test "should update animal" do
    patch :update, id: @animal, animal: { breed_id: @animal.breed_id, egg_id: @animal.egg_id, id: @animal.id, name: @animal.name }
    assert_redirected_to animal_path(assigns(:animal))
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete :destroy, id: @animal
    end

    assert_redirected_to animals_path
  end
end
