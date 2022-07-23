json.extract! login.user, :id, :created_at, :updated_at
json.url login_url(login, format: :json)
