class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :receive_id
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
