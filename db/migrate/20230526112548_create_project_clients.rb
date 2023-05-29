class CreateProjectClients < ActiveRecord::Migration[7.0]
  def change
    create_table :project_clients do |t|
      t.string :name
      t.string :email
      t.string :contact
      t.string :address

      t.timestamps
    end
  end
end
