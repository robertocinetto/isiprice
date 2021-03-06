class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :body
      t.boolean :approved
      t.references :professional, index: true

      t.timestamps
    end
  end
end
