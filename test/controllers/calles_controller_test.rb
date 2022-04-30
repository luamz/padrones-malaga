require 'test_helper'

class CallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calle = calles(:one)
  end

  test "should get index" do
    get calles_url
    assert_response :success
  end

  test "should get new" do
    get new_calle_url
    assert_response :success
  end

  test "should create calle" do
    assert_difference('Calle.count') do
      post calles_url, params: { calle: { barrio_id: @calle.barrio_id } }
    end

    assert_redirected_to calle_url(Calle.last)
  end

  test "should show calle" do
    get calle_url(@calle)
    assert_response :success
  end

  test "should get edit" do
    get edit_calle_url(@calle)
    assert_response :success
  end

  test "should update calle" do
    patch calle_url(@calle), params: { calle: { barrio_id: @calle.barrio_id } }
    assert_redirected_to calle_url(@calle)
  end

  test "should destroy calle" do
    assert_difference('Calle.count', -1) do
      delete calle_url(@calle)
    end

    assert_redirected_to calles_url
  end
end
