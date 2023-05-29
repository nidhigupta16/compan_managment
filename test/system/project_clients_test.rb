require "application_system_test_case"

class ProjectClientsTest < ApplicationSystemTestCase
  setup do
    @project_client = project_clients(:one)
  end

  test "visiting the index" do
    visit project_clients_url
    assert_selector "h1", text: "Project clients"
  end

  test "should create project client" do
    visit project_clients_url
    click_on "New project client"

    fill_in "Address", with: @project_client.address
    fill_in "Contact", with: @project_client.contact
    fill_in "Email", with: @project_client.email
    fill_in "Name", with: @project_client.name
    click_on "Create Project client"

    assert_text "Project client was successfully created"
    click_on "Back"
  end

  test "should update Project client" do
    visit project_client_url(@project_client)
    click_on "Edit this project client", match: :first

    fill_in "Address", with: @project_client.address
    fill_in "Contact", with: @project_client.contact
    fill_in "Email", with: @project_client.email
    fill_in "Name", with: @project_client.name
    click_on "Update Project client"

    assert_text "Project client was successfully updated"
    click_on "Back"
  end

  test "should destroy Project client" do
    visit project_client_url(@project_client)
    click_on "Destroy this project client", match: :first

    assert_text "Project client was successfully destroyed"
  end
end
