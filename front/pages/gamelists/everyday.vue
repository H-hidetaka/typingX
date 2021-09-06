<template>
  <v-container fluid>
    <v-row justify="center">
      <v-col
        v-for="card in cards"
        :key="card.title"
        cols="auto"
        :card="card"
      >
        <v-card
          :elevation="n - 1"
          :height="150"
          :width="150"
          class="secondary"
          :href="card.to"
        >
            <v-row
              class="fill-height"
              align="center"
              justify="center"
              v-text="n - 1"
            ></v-row>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script lang="ts">
import Vue from 'vue';

interface data{
  }

export default Vue.extend({
  data: () => ({

    cards: [
      {
        title: 'ちくわ',
        src:'/various_game.jpg',
        to:'/gamelists/retro_game_introduction',
        icon:'mdi-gamepad-variant'
      },
      {
        title: 'ちくわ',
        src:'/various_game.jpg',
        to:'/gamelists/playable_game_collection/play_game',
        icon:'mdi-gamepad-variant'
      },
      {
        title: 'ちくわ',
        src:'/various_game.jpg',
        to:'/gamelists/retro_game_introduction',
        icon:'mdi-gamepad-variant'
      },
      {
        title: 'ちくわ',
        src:'/various_game.jpg',
        to:'/gamelists/retro_game_introduction',
        icon:'mdi-gamepad-variant'
      },
    ]
  })
})
</script>
