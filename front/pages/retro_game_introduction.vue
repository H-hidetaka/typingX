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
            v-text="card.title"
            color="blue-grey lighten-1 white--text"
            nuxt
            :href="card.to"
            >
              <v-icon>{{ card.icon }}</v-icon>
            </v-btn>
            </v-img>

            <v-card-actions>
              <v-spacer></v-spacer>
            </v-card-actions>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </v-card>
</template>

<script lang="ts">
import Vue from 'vue';
import { CardProps } from '@/types'

export default Vue.extend({
    data: ( CardProps: any ) => ({
        cards: [
            {
                title: 'ゲーム紹介',
                src: '/various_game.jpg',
                flex: 12,
                to: '/gamelists/retro_game_introduction',
                icon: 'mdi-gamepad-variant'
            },
            {
                title: '日常',
                src: '/life.jpg',
                flex: 6,
                to: '/gamelists/everyday',
                icon: 'mdi-gamepad'
            },
            {
                title: 'タイピング矯正',
                src: '/typing.jpeg',
                flex: 6,
                to: '/gamelists/typing_correction',
                icon: 'mdi-gamepad-variant'
            },
        ],
    }),
});
</script>
