<template>
  <v-row justify="center" align="center">
    <v-col cols="12" sm="8" md="6">
      <img
            background-align-right
            src="/pcman1.jpeg"
            alt="typingX"
            class="mb-1"
          >
      <div class="text-center">
        <v-btn @click="getApi()">GET API</v-btn>
        <div>{{ message }}</div>
      </div>
      <v-card>
        <v-card-title class="headline">
          タイピングを楽しく学ぶ！
        </v-card-title>
        <v-card-text>
          <p>タイピングが苦手な方や、ちょっとした暇を潰したい方に送る </p>
          <p>
            タイピングゲーム型webサービス
          </p>
          <p>
            If you have questions, please join the official <a
              href="https://chat.vuetifyjs.com/"
              target="_blank"
              rel="noopener noreferrer"
              title="chat"
            >
              discord
            </a>.
          </p>
          <p>
            Find a bug? Report it on the github <a
              href="https://github.com/vuetifyjs/vuetify/issues"
              target="_blank"
              rel="noopener noreferrer"
              title="contribute"
            >
              issue board
            </a>.
          </p>
          <p>Thank you for developing with Vuetify and I look forward to bringing more exciting features in the future.</p>
          <div class="text-xs-right">
            <em><small>&mdash; John Leider</small></em>
          </div>
          <hr class="my-3">
          <a
            href="https://nuxtjs.org/"
            target="_blank"
            rel="noopener noreferrer"
          >
            Nuxt Documentation
          </a>
          <br>
          <a
            href="https://github.com/nuxt/nuxt.js"
            target="_blank"
            rel="noopener noreferrer"
          >
            Nuxt GitHub
          </a>
        </v-card-text>
        <v-card-actions>
          <v-spacer />
          <v-btn
            color="primary"
            nuxt
            to="/gamelists/playable_game_collection/play_game"
          >
            スタート
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-col>
  </v-row>
</template>

<script>

export default {
    components: {
    },
    data: () => {
        return {
            message: ''
        };
    },
    methods: {
        getApi() {
            const url = '/api/v1/posts';
            this.$axios.get(url)
                .then((res) => {
                    this.message = res.data;
                })
                .catch((error) => {
                    console.log(error);
                });
        }
    }
};
</script>
