class CreateEtudiantclasses < ActiveRecord::Migration[6.1]
  def change
    create_table :etudiantclasses do |t|
      t.string :nomEtud
      t.string :prenomEtud
      t.datetime :naissanceEtud
      t.string :phoneEtud
      t.string :emailEtud
      t.string :addresseEtud
      t.string :villeEtud

      t.timestamps
    end
  end
end
