<template>
  <v-card
    class="mx-auto"
    max-width="1440"
  >
    <v-container fluid>
      <v-row dense>
        <v-col
          v-for="card in cards"
          :key="card.title"
          :cols="card.flex"
        >
          <v-card >
            <v-img
              :src="card.src"
              class="white--text align-end"
              gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
              height="200px"
            >
             <v-btn
              color="orange"
              nuxt
              to="/game_list/game_introduction"

              justify-content="space-between"
            >
            <spacer></spacer>
            <v-icon>mdi-gamepad-variant</v-icon>
            スタート
            </v-btn>

              <v-card-title
               v-text="card.title"
               nuxt
               to="/gamelist"
               >
               </v-card-title>
            </v-img>

            <v-card-actions>
              <v-spacer></v-spacer>
            </v-card-actions>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </v-card>
</template>

<script>
  export default {
    data: () => ({
      cards: [
        { title: 'ゲーム紹介', src: '/various_game.jpg', flex: 12, path: "/game_introduction" },
        { title: '日常', src: '/omoi_woman_omori_business.png', flex: 6 },
        { title: 'タイピング矯正', src: '/keyboard_typing.png', flex: 6 },
      ],
    }),
  }
</script>
