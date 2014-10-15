class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :profile_img
      t.string :profession
      t.string :service_type
      t.integer :hour_cost
      t.string :address
      t.integer :cap
      t.string :city
      t.string :county
      t.string :country
      t.float  :latitude
      t.float  :longitude
      t.integer :cell
      t.string :logo

      t.timestamps
    end
  end
end
