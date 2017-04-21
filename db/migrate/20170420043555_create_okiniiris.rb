class CreateOkiniiris < ActiveRecord::Migration[5.0]
  def change
    create_table :okiniiris do |t|
      t.references :user, foreign_key: true
      t.references :iine, foreign_key: { to_table: :users }

      t.timestamps
      
      t.index [:user_id, :iine_id], unique: true
    end
  end
end
