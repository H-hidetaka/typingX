<template>
  <div class="container">
    <div>
      <Typing />
    </div>
    <div>
      <App />
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import Typing from '~/components/Typing.vue';
import App from '~/components/App.vue';

export default Vue.extend({
    components: {
        Typing,
        App
    }
});
</script>
