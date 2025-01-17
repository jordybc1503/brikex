json.extract! admin_promotor, :id, :name, :contact_person, :email, :phone, :website, :company_type, :headquarters, :years_in_business, :registered_address, :tax_id, :registration_number, :average_return_rate, :total_raised_funds, :number_of_investors, :created_at, :updated_at
json.url admin_promotor_url(admin_promotor, format: :json)
