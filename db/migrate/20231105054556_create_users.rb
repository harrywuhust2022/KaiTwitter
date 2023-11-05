class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :secondname
      t.string :email

      t.timestamps
    end
  end
end
