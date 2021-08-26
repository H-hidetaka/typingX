<template>
<div id="container">
    <div v-if="playing">
        <figure>
            <img
            class="w-full"
            src="background.png"
            alt="ウマ娘プリティーダービー">
        </figure>
    <br>{{ jaword }}<br>
    <h1><span>{{ pressed }}</span>{{ word }}</h1>
    <br>
    <br>
    miss:{{ miss }}
    </div>
    <div v-else>Spaceでスタート</div>
</div>
</template>

<script lang="ts">
import Vue from 'vue';
import App from "./App";

Vue.config.productionTip = false;

export default Vue.extend({
    components: {
        App
    },
data() {
    return {
    jaword: ['魔大戦'],
    jawords: '',
    words: ['apple', 'mataisenntoyobarerutatakaigaatta','aiueo'],
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
    this.setJpWord();
});
},
methods: {
    setJpWord() {
        this.jaword = this.jawords.splice(Math.floor(Math.random() * this.jawords.length), 1)[0];
    },
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
},
});
</script>

<style>
#container {
font-family: Avenir, Helvetica, Arial, sans-serif;
-webkit-font-smoothing: antialiased;
-moz-osx-font-smoothing: grayscale;
text-align: center;
color: #2c3e50;
margin-top: 60px;
}

span {
opacity: 0.5;
}
</style>
