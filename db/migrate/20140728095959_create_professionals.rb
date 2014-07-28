class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
