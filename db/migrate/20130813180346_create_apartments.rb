class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
