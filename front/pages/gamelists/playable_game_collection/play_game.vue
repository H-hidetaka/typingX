<template>
  <div class="container">
    <div>
      <Typing />
    </div>
  </div>
</template>

<script>
import Vue from 'vue'
import Typing from "~/components/Typing.vue"

export default Vue.extend({
  components: {
    Typing
  }
})
</script>
