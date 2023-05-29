require "test_helper"

class ProjectClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_client = project_clients(:one)
  end

  test "should get index" do
    get project_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_project_client_url
    assert_response :success
  end

  test "should create project_client" do
    assert_difference("ProjectClient.count") do
      post project_clients_url, params: { project_client: { address: @project_client.address, contact: @project_client.contact, email: @project_client.email, name: @project_client.name } }
    end

    assert_redirected_to project_client_url(ProjectClient.last)
  end

  test "should show project_client" do
    get project_client_url(@project_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_client_url(@project_client)
    assert_response :success
  end

  test "should update project_client" do
    patch project_client_url(@project_client), params: { project_client: { address: @project_client.address, contact: @project_client.contact, email: @project_client.email, name: @project_client.name } }
    assert_redirected_to project_client_url(@project_client)
  end

  test "should destroy project_client" do
    assert_difference("ProjectClient.count", -1) do
      delete project_client_url(@project_client)
    end

    assert_redirected_to project_clients_url
  end
end
