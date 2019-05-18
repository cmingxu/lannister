import VueRouter from 'vue-router'
import Setting from './views/Settings'
import Site from './views/Site'

const routes = [
    {path: '/settings', component: Setting},
    {path: '/site', component: Site},
]

const router = new VueRouter({routes})

router.beforeEach((to, from, next) => {
    console.log(to)
    console.log(from)
    next()
})

export default router