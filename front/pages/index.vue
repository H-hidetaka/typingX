<template>
  <v-container fluid>
    <v-row>
      <v-col
        v-for="n in 1"
        :key="n"
        class="d-flex child-flex black--text"
        cols="12"
      >
        <v-card
          class="ma-12"
          width="400"
          text
        >
        <v-card
        >
          <img
            align="right"
            src="/pcman1.jpeg"
            width="380px"
            height="100%"
            left="300px"
            top="500px"
          >
        </v-card>
          <v-card-title class="headline">{{ title }}</v-card-title>
          <!-- <v-card-subtitle>タイピングゲーム</v-card-subtitle> -->
          <v-divider class="mx-3"></v-divider>
          <v-card-text>
            <div class="body-1 mb-1">
              {{ message }}
            </div>
          </v-card-text>
          <v-card-actions>
            <v-spacer></v-spacer>
            <v-btn
              color="orange"
              nuxt
              to="/game_list"
              justify-content="space-between"
            >
              <!-- <spacer></spacer> -->
              <v-icon>
              mdi-gamepad</v-icon>
              スタート
            </v-btn>
          </v-card-actions>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script lang="ts">
import Vue, { PropOptions } from 'vue';

export default Vue.extend({
  data: () => {
    return {
      title: 'タイピングを楽しく学ぶ！',
      message: 'タイピングが苦手な方や、ちょっとした暇を潰したい方に送るタインピング型webサービス',
      items: [
        {
          icon: 'mdi-gamepad-variant',
          title: 'スタート',
          to: '/game_list'
        }
      ]
    }
  },
})
</script>
