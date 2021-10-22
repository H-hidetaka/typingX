class CreateApiV1GameLists < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_game_lists do |t|

      t.timestamps
    end
  end
end
