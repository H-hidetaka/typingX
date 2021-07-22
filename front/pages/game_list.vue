<template>
  <section class="container">
    <h1>ゲーム一覧ページ</h1>
    <hr>
    <v-card-actions>
          <v-spacer />
          <v-btn
            color="primary"
            nuxt
            to="/gamelists/game_introduction"
          >
            開く
          </v-btn>
        </v-card-actions>
    <v-card-actions>
          <v-spacer />
          <v-btn
            color="primary"
            nuxt
            to="/gamelists/everyday"
          >
            開く
          </v-btn>
        </v-card-actions>
    <v-card-actions>
          <v-spacer />
          <v-btn
            color="primary"
            nuxt
            to="/typing_correction"
          >
            開く
          </v-btn>
        </v-card-actions>
        <blockquote class="blockquote">
        &#8220;First, solve the problem. Then, write the code.&#8221;
        <footer>
          <small>
            <em>&mdash;John Johnson</em>
          </small>
        </footer>
      </blockquote>
    <!-- <router-link to="/">Top page</router-link> -->
  </section>
</template>
