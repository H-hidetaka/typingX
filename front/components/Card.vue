<template>
  <v-container fluid>
    <v-row>
      <h3
        class="mx-auto"
        color="deep-purple lighten-2"
      >
        レトロゲームリスト一覧
      </h3>
    </v-row>
    <v-row justify="center">
      <v-col
        v-for="card in cards"
        :key="card.title"
        cols="auto"
        {{
        card.info
        }}
      >
        <v-card
          :height="180"
          :width="180"
          color="light-blue"
          :href="card.to"
        >
          <v-card-title v-text="card.title" />
          <v-row
            class="fill-height"
            align="center"
            justify="center"
            v-text="card.body"
          />
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script lang="ts">
import Vue from 'vue';

export default Vue.extend({
    data: () => {
        return {
            info: ''
        };
    },
    //   cards: [
    //     {
    //       title: '1',
    //       to:'/gamelists/retro_game_introduction',
    //       body:'No.1 チュートリアル'
    //     },
    //     {
    //       title: '2',
    //       to:'/gamelists/playable_game_collection/play_game',
    //       body:'No.1 チュートリアル'
    //     },
    //     {
    //       title: '3',
    //       to:'/gamelists/retro_game_introduction',
    //       body:'No.1 チュートリアル'
    //     },
    //     {
    //       title: '4',
    //       to:'/gamelists/retro_game_introduction',
    //       body:'No.1 チュートリアル'
    //     },
    //     {
    //       title: '4',
    //       to:'/gamelists/retro_game_introduction',
    //       body:'No.1 チュートリアル'
    //     },
    //     {
    //       title: '4',
    //       to:'/gamelists/retro_game_introduction',
    //       body:'No.1 チュートリアル'
    //     },
    //   ]
    // }),
});
// mounted() {
//   axios
//   .get('https://')
// },
</script>
