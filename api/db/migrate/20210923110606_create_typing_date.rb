class CreateTypingDate < ActiveRecord::Migration[6.1]
  def change
    create_table :typing_dates do |t|
      t.string   :title,        null: false
      t.text     :typing,       null: false
      t.timestamps

    end
  end
end
