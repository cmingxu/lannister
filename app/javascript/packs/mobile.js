import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../Home.vue'
import router from '../router'

Vue.use(VueRouter)

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('hello'))
  const app = new Vue({
    el,
    router,
    render: h => h(Home)
  })
})
