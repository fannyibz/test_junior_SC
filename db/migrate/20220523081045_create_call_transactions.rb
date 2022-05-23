class CreateCallTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :call_transactions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :goal, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
