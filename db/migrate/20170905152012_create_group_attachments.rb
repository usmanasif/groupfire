class CreateGroupAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :group_attachments do |t|
      t.integer :group
      t.integer :post
      t.string :file
      t.string :contentType
      t.string :name
      t.integer :author
      t.string :thumbImage
      t.string :fileUrl

      t.timestamps
    end
  end
end
