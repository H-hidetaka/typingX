<template>
  <div class="container">
    <div>
      <Card />
      <div class="text-center">
        <v-btn @click="getApi()">
          GET API
        </v-btn>
        <div>{{ message }}</div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';

export default Vue.extend({
    data: () => {
        return {
            message: ''
        };
    },
    methods: {
        getApi() {
            const url = '/api/v1/retro_game_introduction';
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
</script>
