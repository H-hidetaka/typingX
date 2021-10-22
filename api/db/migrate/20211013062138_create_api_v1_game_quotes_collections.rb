class CreateApiV1GameQuotesCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_game_quotes_collections do |t|

      t.timestamps
    end
  end
end
