require 'test_helper'

class PadronesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @padron = padrones(:one)
  end

  test "should get index" do
    get padrones_url
    assert_response :success
  end

  test "should get new" do
    get new_padron_url
    assert_response :success
  end

  test "should create padron" do
    assert_difference('Padron.count') do
      post padrones_url, params: { padron: { ano: @padron.ano } }
    end

    assert_redirected_to padron_url(Padron.last)
  end

  test "should show padron" do
    get padron_url(@padron)
    assert_response :success
  end

  test "should get edit" do
    get edit_padron_url(@padron)
    assert_response :success
  end

  test "should update padron" do
    patch padron_url(@padron), params: { padron: { ano: @padron.ano } }
    assert_redirected_to padron_url(@padron)
  end

  test "should destroy padron" do
    assert_difference('Padron.count', -1) do
      delete padron_url(@padron)
    end

    assert_redirected_to padrones_url
  end
end
