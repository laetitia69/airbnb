class CreateDogsitters < ActiveRecord::Migration[5.2]
  def change
  	#création de la table dogsitters
    create_table :dogsitters do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end
