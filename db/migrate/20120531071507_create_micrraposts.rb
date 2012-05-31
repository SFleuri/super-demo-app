class CreateMicrraposts < ActiveRecord::Migration
  def change
    create_table :micrraposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
