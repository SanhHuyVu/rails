require "test_helper"

class LoaithuocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loaithuoc = loaithuocs(:one)
  end

  test "should get index" do
    get loaithuocs_url
    assert_response :success
  end

  test "should get new" do
    get new_loaithuoc_url
    assert_response :success
  end

  test "should create loaithuoc" do
    assert_difference('Loaithuoc.count') do
      post loaithuocs_url, params: { loaithuoc: { ghichu: @loaithuoc.ghichu, idloai: @loaithuoc.idloai, tenloai: @loaithuoc.tenloai } }
    end

    assert_redirected_to loaithuoc_url(Loaithuoc.last)
  end

  test "should show loaithuoc" do
    get loaithuoc_url(@loaithuoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_loaithuoc_url(@loaithuoc)
    assert_response :success
  end

  test "should update loaithuoc" do
    patch loaithuoc_url(@loaithuoc), params: { loaithuoc: { ghichu: @loaithuoc.ghichu, idloai: @loaithuoc.idloai, tenloai: @loaithuoc.tenloai } }
    assert_redirected_to loaithuoc_url(@loaithuoc)
  end

  test "should destroy loaithuoc" do
    assert_difference('Loaithuoc.count', -1) do
      delete loaithuoc_url(@loaithuoc)
    end

    assert_redirected_to loaithuocs_url
  end
end
