class CreateTunits < ActiveRecord::Migration
  def change
    create_table :tunits do |t|
      t.string :source
      t.string :target

      t.timestamps null: false
    end
  end
end
