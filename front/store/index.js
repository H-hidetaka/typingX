import Vuex from 'vuex'
import users from './modules/users.js'

const createStore = () => {
  return new Vuex.Store({
    state: function() {
      modules: {
        users
      }
    }
  })
}
