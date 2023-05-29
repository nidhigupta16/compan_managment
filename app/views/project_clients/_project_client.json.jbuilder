json.extract! project_client, :id, :name, :email, :contact, :address, :created_at, :updated_at
json.url project_client_url(project_client, format: :json)
