class CreateClaps < ActiveRecord::Migration[5.2]
  def change
    create_table :claps do |t|
      t.string :user_name
      t.integer :idea_id

      t.timestamps
    end
  end
end
