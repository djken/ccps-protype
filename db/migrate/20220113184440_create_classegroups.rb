class CreateClassegroups < ActiveRecord::Migration[6.1]
  def change
    create_table :classegroups do |t|
      t.string :prenom
      t.string :nom
      t.float :devoirs
      t.float :intra
      t.float :final
      t.float :total
      t.string :remarques

      t.timestamps
    end
  end
end
