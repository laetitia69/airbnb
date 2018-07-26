class CreateJoinTableDogDogsitter < ActiveRecord::Migration[5.2]
  def change
    create_join_table :dogs, :dogsitters do |t|
      t.index [:dog_id, :dogsitter_id]
      t.index [:dogsitter_id, :dog_id]
    end
  end
end
