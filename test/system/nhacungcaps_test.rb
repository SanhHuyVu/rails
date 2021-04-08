require "application_system_test_case"

class NhacungcapsTest < ApplicationSystemTestCase
  setup do
    @nhacungcap = nhacungcaps(:one)
  end

  test "visiting the index" do
    visit nhacungcaps_url
    assert_selector "h1", text: "Nhacungcaps"
  end

  test "creating a Nhacungcap" do
    visit nhacungcaps_url
    click_on "New Nhacungcap"

    fill_in "Diachi", with: @nhacungcap.diachi
    fill_in "Idnhacungcap", with: @nhacungcap.idnhacungcap
    fill_in "Tennhacungcap", with: @nhacungcap.tennhacungcap
    fill_in "Thongtindaidien", with: @nhacungcap.thongtindaidien
    click_on "Create Nhacungcap"

    assert_text "Nhacungcap was successfully created"
    click_on "Back"
  end

  test "updating a Nhacungcap" do
    visit nhacungcaps_url
    click_on "Edit", match: :first

    fill_in "Diachi", with: @nhacungcap.diachi
    fill_in "Idnhacungcap", with: @nhacungcap.idnhacungcap
    fill_in "Tennhacungcap", with: @nhacungcap.tennhacungcap
    fill_in "Thongtindaidien", with: @nhacungcap.thongtindaidien
    click_on "Update Nhacungcap"

    assert_text "Nhacungcap was successfully updated"
    click_on "Back"
  end

  test "destroying a Nhacungcap" do
    visit nhacungcaps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nhacungcap was successfully destroyed"
  end
end
