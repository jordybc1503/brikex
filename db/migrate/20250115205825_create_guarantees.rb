class CreateGuarantees < ActiveRecord::Migration[7.1]
  def change
    create_table :guarantees do |t|
      t.references :project, null: false, foreign_key: true
      t.string :description
      t.string :guarantee_type

      t.timestamps
    end
  end
end
