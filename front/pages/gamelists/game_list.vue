<template>
  <v-card
    class="mx-auto"
    max-width="1200"
  >
    <v-container fluid>
      <v-row dense>
        <v-col
          v-for="card in cards"
          :key="card.title"
          :cols="card.flex"
          :card="card"
        >
          <v-card>
            <v-img
              :src="card.src"
              class="align-end"
              gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
              height="200px"
            >
              <v-btn
                color="blue-grey lighten-1 white--text"
                nuxt
                :href="card.to"
                v-text="card.title"
              >
                <v-icon>{{ card.icon }}</v-icon>
              </v-btn>
            </v-img>

            <v-card-actions>
              <v-spacer />
            </v-card-actions>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </v-card>
</template>

<script lang="ts">
import Vue from 'vue';

export default Vue.extend({
    data: () => ({
        cards: [
            {
                title: 'ゲーム紹介',
                src: '/various_game.jpg',
                flex: 12,
                to: '/gamelists/retro_game_introduction',
                icon: 'mdi-gamepad-variant'
            },
            {
                title: 'ゲーム名言・迷言集',
                src: '/life.jpg',
                flex: 6,
                to: '/gamelists/game_quotes_collection',
                icon: 'mdi-gamepad'
            },
            {
                title: 'キャラ・武器の名前の由来',
                src: '/typing.jpeg',
                flex: 6,
                to: '/gamelists/character_weapon_name_origin',
                icon: 'mdi-gamepad-variant'
            },
        ],
    }),
});
</script>
