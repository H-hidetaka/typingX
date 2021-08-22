<template>
    <div class="container">
    <div>
      <Card />
    </div>
  </div>
</template>

<script lang="ts">
import Vue from '/components/Card.vue';

export default Vue.extend({
    components: {
      Card
    }
});
