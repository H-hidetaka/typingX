<template>
  <v-app>
    <v-navigation-drawer
      v-model="drawer"
      :mini-variant="miniVariant"
      :clipped="clipped"
      fixed
      app
    >
      <v-list>
        <v-list-item
          v-for="(item, i) in items"
          :key="i"
          :to="item.to"
          router
          exact
        >
          <v-list-item-action>
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-action>
          <v-list-item-content>
            <v-list-item-title v-text="item.title" />
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </v-navigation-drawer>
    <v-app-bar
      :clipped-left="clipped"
      fixed
      app
    >
      <v-app-bar-nav-icon @click.stop="drawer = !drawer" />
      <v-btn
        icon
        @click.stop="miniVariant = !miniVariant"
      >
        <v-icon>mdi-{{ `chevron-${miniVariant ? 'right' : 'left'}` }}</v-icon>
      </v-btn>
      <v-toolbar-title v-text="title" />
      <v-spacer />
    </v-app-bar>
    <v-app-bar height="128px" color="#F5F5F5" dense flat>
      <div class="header-title justify-center d-flex fill-width">
        <nuxt-link to="/">
        </nuxt-link>
      </div>
    </v-app-bar>
    <v-content style="background:#F5F5F5;height: auto;" class="pa-0 fill-height">
      <v-container :class="{ 'pa-0': $vuetify.breakpoint.sm || $vuetify.breakpoint.xs }">
        <nuxt />
      </v-container>
    </v-content>
<v-footer
      :absolute="!fixed"
      app
    >
      <span>&copy;typingX {{ new Date().getFullYear() }}  </span>
      <v-btn
        color="black"
        nuxt
        to="/about/privacy_policy"
        text
      >
        プライバシーポリシー
      </v-btn>
      <v-btn
        color="black"
        nuxt
        to="/about/terms_of_use"
        text
        justify="space-around"
      >
        利用規約
      </v-btn>
    </v-footer>
  </v-app>
</template>

<script>
export default {
    data () {
        return {
            clipped: false,
            drawer: false,
            fixed: false,
            items: [
                {
                    icon: 'mdi-apps',
                    title: 'ホーム',
                    to: '/'
                },
                {
                    icon: 'mdi-account-plus',
                    title: 'ユーザー登録',
                    to: '/register'
                },
                {
                    icon: 'mdi-login-variant',
                    title: 'ログイン',
                    to: '/login'
                },
                {
                    icon: 'mdi-information-outline',
                    title: 'このサイトについて',
                    to: '/about/index'
                },
            ],
            miniVariant: false,
            right: true,
            rightDrawer: false,
            title: 'typingX'
        };
    }
};
</script>
