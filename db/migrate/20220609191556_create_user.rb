class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|

      t.string :name
      t.string :mobile
      t.string :email
      t.string :password
      
    end
  end
end
