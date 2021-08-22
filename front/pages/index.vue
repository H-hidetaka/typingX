<template>
  <v-container fluid >
      <v-parallax
        src="/laptop2.png"
        class="fill-height repeating-gradient"
      >
        <v-row
          align="center"
          justify="center"
          class="blue-grey--text text--lighten-1"
        >
          <v-col
            class="text-center"
            cols="12"
          >
          <h1 class="text-h4 font-weight-thin mb-4">
            {{ title }}
          </h1>
          <h4 class="subheading">
            {{ message }}
          </h4>
          <v-btn
            color="blue-grey lighten-1"
            class="white--text text--lighten-1"
            nuxt
            to="/game_list"
            justify-content="space-between"
          >
          <spacer></spacer>
            <v-icon>mdi-gamepad</v-icon>
            スタート
          </v-btn>
        </v-col>
      </v-row>
    </v-parallax>
  </v-container>
</template>

<script lang="ts">
import Vue, { PropOptions } from 'vue';

export default Vue.extend({
    data: () => {
        return {
            title: 'タイピングを楽しく学ぶ！',
            message: 'タイピングが苦手な方や、ちょっとした暇を潰したい方に送るタインピング型webサービス',
        };
    },
});
</script>

<style scoped>
  .bottom-gradient {
    background-image: linear-gradient(to top, rgba(0, 0, 0, 0.4) 0%, transparent 72px);
  }

  .repeating-gradient {
    background-image: repeating-linear-gradient(-45deg,
                        rgba(255,0,0,.25),
                        rgba(255,0,0,.25) 5px,
                        rgba(0,0,255,.25) 5px,
                        rgba(0,0,255,.25) 10px
                      );
  }
</style>
