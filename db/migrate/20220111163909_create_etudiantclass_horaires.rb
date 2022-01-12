class CreateEtudiantclassHoraires < ActiveRecord::Migration[6.1]
  def change
    create_table :etudiantclass_horaires do |t|
      t.references :horaire, null: false, foreign_key: true
      t.references :etudiantclass, null: false, foreign_key: true

      t.timestamps
    end
  end
end
