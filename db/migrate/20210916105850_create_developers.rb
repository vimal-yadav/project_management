class CreateDevelopers < ActiveRecord::Migration[6.0]
  def change
    create_table :developers do |t|
      t.string :name
      t.string :email
      t.string :role

      t.timestamps
    end
  end
end
