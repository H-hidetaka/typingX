<template>
  <v-container fluid >
    <v-row justify="center">
      <div class="home">
      {{ name }}
        <button v-on:click="logout()">Log Out</button>
      </div>
    </v-row>
  </v-container>
</template>

<script lang="ts">
import Vue, { PropOptions } from 'vue';
import axios from "axios";

export default {
  name: "Home",
  components: {},
  data: function () {
    return {
      name: "",
    };
  },
  methods: {
    getProfile: async function () {
      const self = this;
      const result = await axios
        .get("/api/user/profile", {
          withCredentials: true,
        })
        .catch(function () {
          self.$router.push("/users/log_in");
          return;
        });

      if (result === undefined) {
        return;
      }

      if (result.data.state != "success") {
        this.$router.push("/users/log_in");
        return;
      }

      this.name = result.data.profile.name;
    },
    logout: async function () {
      const self = this;
      const result = await axios
        .post("/api/user/log_out", {
          withCredentials: true,
        })
        .catch(function () {
          self.$router.push("/users/log_in");
        });

      if (result === undefined) {
        return;
      }

      if (result.data.state != "success") {
        self.$router.push("/users/log_in");
      }
    },
  },
  mounted: async function () {
    await this.getProfile();
  },
};
</script>
