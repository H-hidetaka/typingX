<template>
  <v-container fluid class="orange lighten-4">
    <v-row>
      <v-col
        cols="12"
        class="black--text"
      >
        <img
          align="right"
          src="/pcman1.jpeg"
          width="380px"
          height="100%"
          left="300px"
          top="500px"
        >
        <h1>
        {{ title }}
        </h1>
        <h2
          class="text-justify"
            >
              {{ message }}
              <div>
              {{ message2 }}
              </div>
              <div>
              {{ message3 }}
              </div>
        </h2>
        <v-btn
            color="orange"
            nuxt
            to="/game_list"
            justify-content="space-between"
          >
          <spacer></spacer>
          <v-icon class="align-end">mdi-gamepad</v-icon>
            スタート
        </v-btn>
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
      message: 'タイピングが苦手な方や、',
      message2: 'ちょっとした暇を潰したい方に送る',
      message3: 'タインピング型webサービス',
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
