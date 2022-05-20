require 'test_helper'

class FamiliasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @familia = familias(:one)
  end

  test "should get index" do
    get familias_url
    assert_response :success
  end

  test "should get new" do
    get new_familia_url
    assert_response :success
  end

  test "should create familia" do
    assert_difference('Familia.count') do
      post familias_url, params: { familia: { apellidos: @familia.apellidos } }
    end

    assert_redirected_to familia_url(Familia.last)
  end

  test "should show familia" do
    get familia_url(@familia)
    assert_response :success
  end

  test "should get edit" do
    get edit_familia_url(@familia)
    assert_response :success
  end

  test "should update familia" do
    patch familia_url(@familia), params: { familia: { apellidos: @familia.apellidos } }
    assert_redirected_to familia_url(@familia)
  end

  test "should destroy familia" do
    assert_difference('Familia.count', -1) do
      delete familia_url(@familia)
    end

    assert_redirected_to familias_url
  end
end
