class CreateApiV1CharacterWeaponNameOrigins < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_character_weapon_name_origins do |t|

      t.timestamps
    end
  end
end
