class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :username
      t.datetime :joinAt
      t.string :status
      t.string :token
      t.string :phoneNumber
      t.string :online

      t.timestamps
    end
  end
end
