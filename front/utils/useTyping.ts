import { computed, reactive, toRefs } from 'vue'

import { StateProps, ReturnStateProps } from '@/types'
import { horsesData } from '@/constants'

export const useTyping = (): ReturnStateProps => {
  const defaultState: StateProps = {
    phase: 'IDLE',
    isValid: false,
    timer: 0,
    typingCount: 0,
    missTypingCount: 0,
    horsesReactiveData: JSON.parse(JSON.stringify(horsesData)),
    timerId: null
  }
  const state = reactive<StateProps>({ ...defaultState })
  const audio = new Audio(require('@/assets/miss.mp3'))
  // 正打率の算出
  const correctTypingAverage = computed(() => {
    const sum = state.typingCount + state.missTypingCount
    return Math.round((state.typingCount / sum) * 100)
  })
  // ランダム数値算出
  const randomNumber = computed(() => Math.floor(Math.random() * state.horsesReactiveData.length))
  // ウマ娘算出
  const selectedHorse = computed(() => state.horsesReactiveData[randomNumber.value])
  /**
   * timer関数
   */
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
    const splitHorseRoman = selectedHorse.value.roman.split('')
    // キーとローマ字先頭の整合性がある時
    if (keycode === splitHorseRoman[0]) {
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
}

export type TypingStore = ReturnType<typeof useTyping>
