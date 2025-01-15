class CreateFees < ActiveRecord::Migration[7.1]
  def change
    create_table :fees do |t|
      t.references :project, null: false, foreign_key: true
      t.string :fee_type
      t.decimal :amount

      t.timestamps
    end
  end
end
