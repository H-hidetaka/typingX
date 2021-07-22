<template>
  <v-container fluid class="orange lighten-4">
    <v-row>
      <v-col
        cols="12"
        class="black--text "
        max-width="1440 mx-auto"
      >
        <img
          align="right"
          src="/pcman1.jpeg"
          width="380px"
          height="100%"
          left="300px"
          top="500px"
        >
        <h1
          ma="10"
        >
        タイピングを楽しく学ぶ！
        </h1>
        <h2
          class="text-justify"
            >
            <br>タイピングが苦手な方や、</br>
            ちょっとした暇を潰したい方に送る</br>
            タインピング型webサービス
        </h2>
        <v-btn
            color="black"
            nuxt
            to="/game_list"

            justify-content="space-between"
          >
          <spacer></spacer>
          <v-icon>mdi-gamepad-variant</v-icon>
            スタート
        </v-btn>
      </v-col>
      <v-col>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import NuxtLogo from '~/components/NuxtLogo.vue'
import VuetifyLogo from '~/components/VuetifyLogo.vue'

export default {
  components: {
    NuxtLogo,
    VuetifyLogo
  },
  data: () => {
    return {
      message: '',
      items: [
        {
          icon: 'mdi-gamepad-variant',
          title: 'スタート',
          to: '/game_list'
        }
      ]
    }
  },

  methods: {
    getApi() {
      const url = "/api/v1/posts"
      this.$axios.get(url)
        .then((res) => {
          this.message = res.data
        })
        .catch((error) => {
          console.log(error)
        })
    }
  },
}
</script>
