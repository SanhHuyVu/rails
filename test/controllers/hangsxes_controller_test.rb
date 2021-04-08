require "test_helper"

class HangsxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hangsx = hangsxes(:one)
  end

  test "should get index" do
    get hangsxes_url
    assert_response :success
  end

  test "should get new" do
    get new_hangsx_url
    assert_response :success
  end

  test "should create hangsx" do
    assert_difference('Hangsx.count') do
      post hangsxes_url, params: { hangsx: { idnhasanxuat: @hangsx.idnhasanxuat, quocgia: @hangsx.quocgia, tenhang: @hangsx.tenhang } }
    end

    assert_redirected_to hangsx_url(Hangsx.last)
  end

  test "should show hangsx" do
    get hangsx_url(@hangsx)
    assert_response :success
  end

  test "should get edit" do
    get edit_hangsx_url(@hangsx)
    assert_response :success
  end

  test "should update hangsx" do
    patch hangsx_url(@hangsx), params: { hangsx: { idnhasanxuat: @hangsx.idnhasanxuat, quocgia: @hangsx.quocgia, tenhang: @hangsx.tenhang } }
    assert_redirected_to hangsx_url(@hangsx)
  end

  test "should destroy hangsx" do
    assert_difference('Hangsx.count', -1) do
      delete hangsx_url(@hangsx)
    end

    assert_redirected_to hangsxes_url
  end
end
