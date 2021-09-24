<template>
  <div class="container">
    <div>
      <Card />
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';
import Card from '@/components/Card.vue';

export default Vue.extend({
    components: {
        Card
    }
});
</script>
