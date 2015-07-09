require 'test_helper'

class WeathersControllerTest < ActionController::TestCase
  setup do
    @weather = weathers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weathers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weather" do
    assert_difference('Weather.count') do
      post :create, weather: { Location_id: @weather.Location_id, high_temp: @weather.high_temp, location_id: @weather.location_id, low_temp: @weather.low_temp, precipitation: @weather.precipitation, sunrise: @weather.sunrise, sunset: @weather.sunset, wind_speed: @weather.wind_speed }
    end

    assert_redirected_to weather_path(assigns(:weather))
  end

  test "should show weather" do
    get :show, id: @weather
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weather
    assert_response :success
  end

  test "should update weather" do
    patch :update, id: @weather, weather: { Location_id: @weather.Location_id, high_temp: @weather.high_temp, location_id: @weather.location_id, low_temp: @weather.low_temp, precipitation: @weather.precipitation, sunrise: @weather.sunrise, sunset: @weather.sunset, wind_speed: @weather.wind_speed }
    assert_redirected_to weather_path(assigns(:weather))
  end

  test "should destroy weather" do
    assert_difference('Weather.count', -1) do
      delete :destroy, id: @weather
    end

    assert_redirected_to weathers_path
  end
end
