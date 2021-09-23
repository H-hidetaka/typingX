<template>
  <div class="log_in">
    log in
    <div>
      <div>{{ message }}</div>
      <input
        v-model="name"
        type="text"
        placeholder="NAME"
      ><br>
      <input
        v-model="password"
        type="password"
        placeholder="PASSWORD"
      ><br>
      <button @click="login()">
        LOGIN
      </button>
    </div>
  </div>
</template>

<script>
const axios = require('axios');
const qs = require('qs');

export default {
    name: 'LogIn',
    components: {},
    data: function () {
        return {
            name: '',
            password: '',
            message: '',
        };
    },
    methods: {
        login: async function () {
            const self = this;
            const result = await axios
                .post('/api/auth/verification', {
                    user: {
                        name: this.name,
                        password: this.password,
                    },
                    paramsSerializer: function (params) {
                        return qs.stringify(params, { arrayFormat: 'brackets' });
                    },
                })
                .catch(function () {
                    self.message = '入力エラー';
                });

            if (result.data.state == 'success') {
                this.$router.push('/');
            }
        },
    },
};
</script>
