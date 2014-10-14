class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :profile_img
      t.string :profession
      t.string :address
      t.float  :latitude
      t.float  :longitude

      t.timestamps
    end
  end
end
