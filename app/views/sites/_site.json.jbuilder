json.extract! site, :id, :string, :user_id, :short_desc, :desc, :state, :created_at, :updated_at
json.url site_url(site, format: :json)
