class AddFieldToEtudiantclasses < ActiveRecord::Migration[6.1]
  def change
    add_column :etudiantclasses, :horaireEtud, :string
  end
end
