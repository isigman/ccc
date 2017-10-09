class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :fsuid
      t.string :wallet_address

      t.timestamps
    end
  end
end
