<template>
  <div class="container">
    <div>
      <Typing />
      <Score />
      <App />
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import Typing from '~/components/Typing.vue';
import Score from '~/components/Score.vue';
import App from '~/components/App.vue';

export default Vue.extend({
    components: {
        Typing,
        App,
        Score
    }
});
</script>
