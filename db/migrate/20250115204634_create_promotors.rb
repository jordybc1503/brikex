class CreatePromotors < ActiveRecord::Migration[7.1]
  def change
    create_table :promotors do |t|
      t.string :name
      t.string :contact_person
      t.string :email
      t.string :phone
      t.string :website
      t.string :company_type
      t.string :headquarters
      t.integer :years_in_business
      t.string :registered_address
      t.string :tax_id
      t.string :registration_number
      t.decimal :average_return_rate
      t.decimal :total_raised_funds
      t.integer :number_of_investors

      t.timestamps
    end
  end
end
