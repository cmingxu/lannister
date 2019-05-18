<template>
  <div id="app">
    <mt-header :title="title">
      <router-link to="/" slot="left">
        <mt-button icon="back">back</mt-button>
      </router-link>
      <mt-button icon="more" slot="right"></mt-button>
    </mt-header>
    <router-view></router-view>
    <mt-tabbar v-model="activeTab">
      <mt-tab-item id="/site">主页</mt-tab-item>
      <mt-tab-item id="/settings">我的</mt-tab-item>
    </mt-tabbar>
  </div>
</template>

<script>
import MintUI from "mint-ui";
import "mint-ui/lib/style.css";
import Vue from "vue";
import { watch } from "fs";
Vue.use(MintUI);

export default {
  data: function() {
    return {
      message: "Hello Vue!",
      activeTab: "/site",
      title: "内衣小站"
    };
  },
  components: {},
  watch: {
    activeTab: {
      handler(n, o) {
        this.$router.push({ path: this.activeTab });
      }
    }
  }
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
