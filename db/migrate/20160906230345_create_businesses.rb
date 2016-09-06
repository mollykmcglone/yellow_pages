class CreateBusinesses < ActiveRecord::Migration[5.0]
  def change
    create_table :businesses do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :city, :string
      t.column :state, :string
      t.column :zipcode, :integer
      t.column :website, :string
      t.column :phone, :string
      t.column :type_id, :integer

      t.timestamps
    end
  end
end
