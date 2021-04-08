require "application_system_test_case"

class HangsxesTest < ApplicationSystemTestCase
  setup do
    @hangsx = hangsxes(:one)
  end

  test "visiting the index" do
    visit hangsxes_url
    assert_selector "h1", text: "Hangsxes"
  end

  test "creating a Hangsx" do
    visit hangsxes_url
    click_on "New Hangsx"

    fill_in "Idnhasanxuat", with: @hangsx.idnhasanxuat
    fill_in "Quocgia", with: @hangsx.quocgia
    fill_in "Tenhang", with: @hangsx.tenhang
    click_on "Create Hangsx"

    assert_text "Hangsx was successfully created"
    click_on "Back"
  end

  test "updating a Hangsx" do
    visit hangsxes_url
    click_on "Edit", match: :first

    fill_in "Idnhasanxuat", with: @hangsx.idnhasanxuat
    fill_in "Quocgia", with: @hangsx.quocgia
    fill_in "Tenhang", with: @hangsx.tenhang
    click_on "Update Hangsx"

    assert_text "Hangsx was successfully updated"
    click_on "Back"
  end

  test "destroying a Hangsx" do
    visit hangsxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hangsx was successfully destroyed"
  end
end
