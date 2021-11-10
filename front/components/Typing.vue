<template>
  <v-container fluid>
    <v-row>
      <v-col auto>
  <div>
    <h6 class=text-center
      cols="12"
    >
    {{title}}
    </h6>
  <!-- １、文字を表示する
  ２、文字がキーボードに反応する処理を書く
  ３、文字を打つと、色が変わる処理を書く
  ４、３画面表示
  ５、railsからデータを取得できるようにするaxios使用
  ６、スコア機能を作成し、決められた文字数を打ち込んだ時に画面を切りかえる（v-if使用)
  ７、スコアはタイピング速度と精度で判定 -->

  </div>
      </v-col>
    </v-row>
  </v-container>
</template>

<script lang="ts">
import Vue from 'vue';
  interface Human {
    name: string;
    age: number;
  }

export default Vue.extend({
  data:() => {
        return {
            title: 'タイピングを楽しく学ぶ！',
            message: 'タイピングが苦手な方や、ちょっとした暇を潰したい方に送るタインピング型webサービス',
        };
    },
});
</script>
