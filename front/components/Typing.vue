<template>
<div id="app">
    <div v-if="playing">
    <span>{{ pressed }}</span>{{ word }}
    <br>
    <br>
    miss:{{ miss }}
    </div>
    <div v-else>Spaceでスタート</div>
    <div>
        {{ push }}
    <div>
</div>
</template>

<script lang="ts">
import Vue from 'vue';
// import Type from 'type';

const OnGUI:string = 'inputed';
export default Vue.extend({
data() {
    return {
    words: ['apple', 'banana', 'grape'],
    word: '',
    pressed: '',
    miss: 0,
    playing: false,
    };
},
created() {
    addEventListener('keydown', (e) => {
    if (e.key !== ' ' || this.playing) {
        return;
    }
    this.playing = true;
    this.setWord();
    this.keyDown();
    this.keyBoard();
});
},
methods: {
    setWord() {
      this.word = this.words.splice(Math.floor(Math.random() * this.words.length), 1)[0];
    },
    keyDown() {
    addEventListener('keydown', (e) => {
        if (e.key !== this.word[0]) {
        this.miss++;
        return;
        }
        this.pressed += e.key;
        this.word = this.word.slice(1);
        if (this.word.length === 0) {
        this.pressed = '';
        if (this.words.length === 0) {
            this.word = 'おしまい';
            return;
        }
        this.setWord();
        }
    });
    },
    keyBoard() {
        this.push = this.push.
    }
},
});
</script>
