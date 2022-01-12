class CreateSalles < ActiveRecord::Migration[6.1]
  def change
    create_table :salles do |t|
      t.string :nomsalle

      t.timestamps
    end
  end
end
