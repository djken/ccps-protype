class CreateHoraires < ActiveRecord::Migration[6.1]
  def change
    create_table :horaires do |t|
      t.references :sessionencour, null: false, foreign_key: true
      t.references :jour, null: false, foreign_key: true
      t.references :cour, null: false, foreign_key: true
      t.references :heure, null: false, foreign_key: true
      t.references :salle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
