<template>
  <v-container fluid>
    <v-row>
      <h3 class="mx-auto"
      color="deep-purple lighten-2">レトロゲームリスト一覧</h3>
    </v-row>
    <v-row justify="center">

      <v-col
        v-for="card in cards"
        :key="card.title"
        cols="auto"
        {{ card.info }}
      >
        <v-card
          :height="180"
          :width="180"
          color="light-blue"
          :href="card.to"
        >
          <v-card-title v-text="card.title">
          </v-card-title>
            <v-row
              class="fill-height"
              align="center"
              justify="center"
              v-text="card.body"
            >
            </v-row>
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
    methods: {
        getApi() {
            const url = '/api/v1/posts';
            this.$axios.get(url)
                .then((res) => {
                    this.message = res.data;
                    this.$axios.defaults.headers.common['X-CSRF-Token'] = res.headers['x-csrf-token'];
                })
                .catch((error) => {
                    console.log(error);
                });
        }
    }
});
    // mounted() {
    //   axios
    //   .get('https://')
    // },
</script>
