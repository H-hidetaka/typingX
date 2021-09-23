<template>
  <div class="container">
    <div>
      <Card />
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue';

export default Vue.extend({
    data: () => ({

        cards: [
            {
                title: '',
                src:'/various_game.jpg',
                to:'/gamelists/playable_game_collection/play_game'
            },
            {
                title: 'ちくわ',
                src:'/various_game.jpg',
                to:'/gamelists/playable_game_collection/play_game'
            },
            {
                title: 'ちくわ',
                src:'/various_game.jpg',
                to:'/gamelists/retro_game_introduction',

            },
            {
                title: 'ちくわ',
                src:'/various_game.jpg',
                to:'/gamelists/retro_game_introduction',

            },
            {
                title: 'ちくわ',
                src:'/various_game.jpg',
                to:'/gamelists/retro_game_introduction',

            },
            {
                title: 'ちくわ',
                src:'/various_game.jpg',
                to:'/gamelists/retro_game_introduction',

            },
            {
                title: 'ちくわ',
                src:'/various_game.jpg',
                to:'/gamelists/retro_game_introduction',

            },
        ]
    })
});
</script>
