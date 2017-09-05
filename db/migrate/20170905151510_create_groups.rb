class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.integer :parent
      t.integer :type
      t.string :description
      t.string :superGroup
      t.string :name
      t.string :show
      t.string :permission
      t.string :visibility
      t.string :joinability
      t.string :hasGroupFeed
      t.string :hasGroupChat
      t.string :groupChatId
      t.string :hidden
      t.string :superuserContent

      t.timestamps
    end
  end
end
