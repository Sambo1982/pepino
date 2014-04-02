class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.string :name
      t.string :actor
      t.string :desire
      t.string :outcome

      t.timestamps
    end
  end
end
