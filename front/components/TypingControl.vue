<script　lang="ts">
// import { computed, reactive, toRefs } from 'vue'
import Vue from 'vue'
import { StateProps, ReturnStateProps } from '@/types'
import { retrogamesData } from '@/static'

export default Vue.extend({
const TypingControl = (): ReturnStateProps => {
  const defaultState: StateProps = {
    phase: '',
    isValid: false,
    timer: 0,
    TypingCount: 0,
    missTypingcount: 0,
    retrogameData: JSON.parse(JSON.stringify(retrogamesData)),
    timerId: null
  }
  const state = reactive<StateProps>({ ...defaultState })
  const audio = new Audio(require('@/static/魔王魂 効果音 システム36.mp3'))

  const correctTypingAverage = computed(() => {
    const sum = state.typingCount + state.missTypingCount
    return Math.round((state.typingCount / sum) * 100)
  })
  const startTimer = () => {
    state.timerId = setInterval(() => {
      state.timer++
    }, 1000)
  }
  /**
   * タイピング処理関数
   */
  const getKeycode = (event: KeyboardEvent) => {
    const keycode = event.key
    // ローマ字を分割
    const splitRomanChar = selectedgame.value.roman.split('')
    // キーとローマ字先頭の整合性がある時
    if (keycode === splitRomanChar[0]) {
      state.isValid = false
      state.typingCount++
      state.horsesReactiveData[randomNumber.value].roman = selectedHorse.value.roman.slice(1)
      if (!selectedHorse.value.roman.length) {
        state.horsesReactiveData.splice(randomNumber.value, 1)
        // 全てタイピングし終わった時
        if (!state.horsesReactiveData.length) {
          // phase変更
          state.phase = 'FINISHED'
          // keypressイベントの登録解除
          document.removeEventListener('keypress', getKeycode)
        }
      }
    } else {
      // 不一致だった場合
      audio.load()
      audio.play()
      state.isValid = true
      state.missTypingCount++
    }
  }
  /**
   * 値をリセットする関数
   */
  const resetValue = () => {
    Object.assign(state, defaultState, { horsesReactiveData: JSON.parse(JSON.stringify(horsesData)) })
  }

  return {
    ...toRefs(state),
    selectedHorse,
    correctTypingAverage,
    getKeycode,
    resetValue,
    startTimer
  }
})

export type TypingStore = ReturnType<typeof useTyping>

</script>
