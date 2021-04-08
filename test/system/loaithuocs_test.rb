require "application_system_test_case"

class LoaithuocsTest < ApplicationSystemTestCase
  setup do
    @loaithuoc = loaithuocs(:one)
  end

  test "visiting the index" do
    visit loaithuocs_url
    assert_selector "h1", text: "Loaithuocs"
  end

  test "creating a Loaithuoc" do
    visit loaithuocs_url
    click_on "New Loaithuoc"

    fill_in "Ghichu", with: @loaithuoc.ghichu
    fill_in "Idloai", with: @loaithuoc.idloai
    fill_in "Tenloai", with: @loaithuoc.tenloai
    click_on "Create Loaithuoc"

    assert_text "Loaithuoc was successfully created"
    click_on "Back"
  end

  test "updating a Loaithuoc" do
    visit loaithuocs_url
    click_on "Edit", match: :first

    fill_in "Ghichu", with: @loaithuoc.ghichu
    fill_in "Idloai", with: @loaithuoc.idloai
    fill_in "Tenloai", with: @loaithuoc.tenloai
    click_on "Update Loaithuoc"

    assert_text "Loaithuoc was successfully updated"
    click_on "Back"
  end

  test "destroying a Loaithuoc" do
    visit loaithuocs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loaithuoc was successfully destroyed"
  end
end
