<template>
  <div id="app">
    <p>{{ message }}</p>
    <Button size="large" type="danger">foobar</Button>
    <Tabbar v-model="selected">
    <TabBar id="tab1">
    <img slot="icon" src="">
    tab1
    </TabBar>
    <TabBar id="tab2">
    <img slot="icon" src="">
    tab2
    </TabBar>
    <TabBar id="tab3">
    <img slot="icon" src="">
    tab3
    </TabBar>
    <TabBar id="tab4">
    <img slot="icon" src="">
    tab4
    </TabBar>
    </Tabbar>
  </div>
</template>

<script>
import HelloComponent from './components/hello'
  import MintUI from 'mint-ui'
  import 'mint-ui/lib/style.css'
  import { Tabbar, TabItem,Button } from 'mint-ui'
  import Vue from 'vue'

  Vue.component(Tabbar.name, Tabbar);
  Vue.component(TabItem.name, TabItem);
  Vue.component(Button.name, Button);

  export default {
    data: function () {
      return {
        message: "Hello Vue!",
        selected: "",
      }
    },
    components: {
      HelloComponent,
      Button
    }
  }
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
