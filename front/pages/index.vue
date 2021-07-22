<template>
  <v-container fluid>
    <v-row>
      <v-col
        class="orange lighten-4 pa-10"
        cols="12"
      >
        <img
          align="right"
          src="/pcman1.jpeg"
          width="380px"
          height="100%"
          left="300px"
          top="500px"
          md="12"
        >
        <div>
        <h1
          class="font-weight-black"
          mt="10"
        >
        タイピングを楽しく学ぶ！
        </h1>
        <p
          m="100px"
          class="text-justify"
            >
            タイピングが苦手な方や、ちょっとした
            暇を潰したい方に送るタインピング型webサービス
        </p>
        <v-btn
            color="primary"
            nuxt
            to="/game_list"
            align="center"
            justify-content="space-between"
          >
          <v-icon>mdi-gamepad-variant</v-icon>
            スタート
        </v-btn>
        </div>
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
