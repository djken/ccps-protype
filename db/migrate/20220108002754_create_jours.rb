class CreateJours < ActiveRecord::Migration[6.1]
  def change
    create_table :jours do |t|
      t.string :nomjour

      t.timestamps
    end
  end
end
