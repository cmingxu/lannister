json.extract! site_admin, :id, :identity, :encrypted_password, :created_at, :updated_at
json.url site_admin_url(site_admin, format: :json)
