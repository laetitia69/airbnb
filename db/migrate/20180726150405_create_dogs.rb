class CreateDogs < ActiveRecord::Migration[5.2]
  def change
  	#création de la table dogs
    create_table :dogs do |t|
      t.string :name
      t.string :race
      t.timestamps
    end
  end
end
