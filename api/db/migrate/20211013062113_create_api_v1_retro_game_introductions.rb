class CreateApiV1RetroGameIntroductions < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_retro_game_introductions do |t|

      t.timestamps
    end
  end
end
