require "application_system_test_case"

class EngineersTest < ApplicationSystemTestCase
  setup do
    @engineer = engineers(:one)
  end

  test "visiting the index" do
    visit engineers_url
    assert_selector "h1", text: "Engineers"
  end

  test "should create engineer" do
    visit engineers_url
    click_on "New engineer"

    fill_in "Age", with: @engineer.age
    fill_in "Name", with: @engineer.name
    fill_in "Position", with: @engineer.position
    click_on "Create Engineer"

    assert_text "Engineer was successfully created"
    click_on "Back"
  end

  test "should update Engineer" do
    visit engineer_url(@engineer)
    click_on "Edit this engineer", match: :first

    fill_in "Age", with: @engineer.age
    fill_in "Name", with: @engineer.name
    fill_in "Position", with: @engineer.position
    click_on "Update Engineer"

    assert_text "Engineer was successfully updated"
    click_on "Back"
  end

  test "should destroy Engineer" do
    visit engineer_url(@engineer)
    click_on "Destroy this engineer", match: :first

    assert_text "Engineer was successfully destroyed"
  end
end
