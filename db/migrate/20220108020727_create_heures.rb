class CreateHeures < ActiveRecord::Migration[6.1]
  def change
    create_table :heures do |t|
      t.string :heurecours

      t.timestamps
    end
  end
end
