// <script lang="ts">
// import Vue from 'vue'
// import { StateProps, ReturnStateProps } from '@/types'
// import { retrogamesData } from '~/types'

// export default Vue.extend({
// const TypingControl = (): ReturnStateProps => {
//   const defaultState: StateProps = {
//     phase: '',
//     isValid: false,
//     timer: 0,
//     TypingCount: 0,
//     missTypingcount: 0,
//     retrogameData: JSON.parse(JSON.stringify(retrogamesData)),
//     timerId: null
//   }
//   const state = reactive<StateProps>({ ...defaultState })
//   const audio = new Audio(require('@/static/misstype.mp3'))

//   const correctTypingAverage = computed(() => {
//     const sum = state.typingCount + state.missTypingCount
//     return Math.round((state.typingCount / sum) * 100)
//   })
//   const startTimer = () => {
//     state.timerId = setInterval(() => {
//       state.timer++
//     }, 1000)
//   }
//   const getKeycode = (event: KeyboardEvent) => {
//     const keycode = event.key
//     const splitRomanChar = selectedgame.value.roman.split('')
//     if (keycode === splitRomanChar[0]) {
//       state.isValid = false
//       state.typingCount++
//       state.retrogamesDataData[randomNumber.value].roman = selectedHorse.value.roman.slice(1)
//       if (!selectedHorse.value.roman.length) {
//         state.horsesReactiveData.splice(randomNumber.value, 1)
//         if (!state.horsesReactiveData.length) {
//           state.phase = 'FINISHED'
//           document.removeEventListener('keypress', getKeycode)
//         }
//       }
//     } else {
//       audio.load()
//       audio.play()
//       state.isValid = true
//       state.missTypingCount++
//     }
//   }
//   const resetValue = () => {
//     Object.assign(state, defaultState, { horsesReactiveData: JSON.parse(JSON.stringify(horsesData)) })
//   }

//   return {
//     ...toRefs(state),
//     selectedHorse,
//     correctTypingAverage,
//     getKeycode,
//     resetValue,
//     startTimer
//   }
// })
// </script>
