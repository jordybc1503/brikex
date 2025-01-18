json.extract! admin_user, :id, :email, :preferred_language, :country_code, :first_name, :last_name, :second_last_name, :phone_prefix, :phone_number, :created_at, :updated_at
json.url admin_user_url(admin_user, format: :json)
