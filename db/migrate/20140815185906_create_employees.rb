class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.column :name, :string
      t.column :login_id, :int
    end
  end
end
