class CreateSessionencours < ActiveRecord::Migration[6.1]
  def change
    create_table :sessionencours do |t|
      t.boolean :etatsession
      t.date :datedebut
      t.date :datefin

      t.timestamps
    end
  end
end
