import { getAccessorType } from 'typed-vuex'

// これらは型推論に必要のため、空でも定義しておく
export const state = () => ({})
export const getters = {}
export const mutations = {}
export const actions = {}

export const accessorType = getAccessorType({
  state,
  getters,
  mutations,
  actions,
})
