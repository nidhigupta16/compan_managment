class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :subdomain
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
