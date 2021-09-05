<template>
  <v-container>
    <v-row justify="center">
      <v-col
        v-for="n in 25"
        :key="n.title"
        cols="auto"
        :card="card"
      >
        <v-card
          :elevation="n - 1"
          height="150"
          width="150"
          class="secondary"
          onClick="message"
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
      }
    ]
  })
})
</script>
