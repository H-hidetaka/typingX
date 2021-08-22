<template>
  <div class="container">
    <div>
      <Typing />
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import Typing from '~/components/Typing.vue'

export default Vue.extend({
    components: {
        Typing
    }
});
</script>
