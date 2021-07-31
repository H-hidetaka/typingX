<template>
  <v-app >
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
    <v-main>
      <v-container>
        <Nuxt />
      </v-container>
    </v-main>
    <v-footer
      :absolute="!fixed"
      app
    >
      <span>&copy;typingX {{ new Date().getFullYear() }}  </span>
      <v-btn
            color="black"
            nuxt
            to="/privacy_policy"
            text
          >
        プライバシーポリシー
      </v-btn>
      <v-btn
            color="black"
            nuxt
            to="/terms_of_use"
            text
            justify="space-around"
          >
        利用規約
      </v-btn>
      <!-- <router-link
                  to="/terms_of_use"
                  tag="onclick"
                  align="center"
                  justify-content="space-between"
                  cursor="onclick"
          >
          利用規約
      </router-link> -->

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
          icon: 'mdi-format-list-bulleted-triangle',
          title: 'ゲーム一覧',
          to: '/game_list'
        },
        {
          icon: 'mdi-microsoft-xbox-controller',
          title: 'ゲーム紹介',
          to: '/gamelists/game_introduction'
        },
        {
          icon: 'mdi-human',
          title: '日常',
          to: '/gamelists/everyday'
        },
        {
          icon: 'mdi-keyboard-variant',
          title: 'タイピング矯正',
          to: '/gamelists/typing_correction'
        }
      ],
      miniVariant: false,
      right: true,
      rightDrawer: false,
      title: 'typingX'
    }
  }
}
</script>
