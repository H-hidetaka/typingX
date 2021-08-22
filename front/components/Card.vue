<template>
<v-container>
    <v-row justify="center">
      <v-col
        v-for="n in 14"
        :key="n"
        cols="auto"
      >
        <v-card dark color="black" width="200" height="200" class="ma-2">
          <v-card-title class="headline">title</v-card-title>
          <v-card-subtitle>card subtitle</v-card-subtitle>
          <v-divider class="mx-3"></v-divider>
          <v-card-text>
            <div class="body-1 mb-1">card text. card text. card text. card text. card text. card text. card text. card text. card text. card text. card text.</div>
            <div class="body-2 mb-1">card text. card text. card text. card text. card text. card text. card text. card text. card text. card text. card text.</div>
          </v-card-text>
          <v-card-actions>
            <v-spacer></v-spacer>
            <!-- <v-btn small>OK</v-btn>
            <v-btn x-small>Cancel</v-btn> -->
          </v-card-actions>
          </v-card>
      </v-col>
    </v-row>
</v-container>
</template>

<script lang="ts">
import Vue from 'vue';

export default Vue.extend({
    data () {
        return {
            colors: [
                'indigo',
                'warning',
                'pink darken-2',
                'red lighten-1',
                'deep-purple accent-4',
            ],
            slides: [
                'First',
                'Second',
                'Third',
                'Fourth',
                'Fifth',
            ],
        };
    },
});
</script>
