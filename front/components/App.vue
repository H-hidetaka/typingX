<template>
  <div id="app">
    <input
      :value="input"
      class="input"
      placeholder="Tap on the virtual keyboard to start"
      @input="onInputChange"
    >
    <SimpleKeyboard
      :input="input"
      @onChange="onChange"
      @onKeyPress="onKeyPress"
    />
  </div>
</template>

<script>
import Vue from 'vue';
import SimpleKeyboard from './SimpleKeyboard';
import './App.css';

export default Vue.extend({
    name: 'App',
    components: {
        SimpleKeyboard
    },
    data: () => ({
        input: ''
    }),
    methods: {
        onChange(input) {
            this.input = input;
        },
        onKeyPress(button) {
            console.log('button', button);
        },
        onInputChange(input) {
            this.input = input.target.value;
        }
    }
});
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
</style>
