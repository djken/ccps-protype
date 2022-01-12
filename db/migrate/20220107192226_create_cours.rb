class CreateCours < ActiveRecord::Migration[6.1]
  def change
    create_table :cours do |t|
      t.string :nomcours

      t.timestamps
    end
  end
end
