import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Ajout from '@/components/Ajout'
import Liste from '@/components/Liste'
import Edit from '@/components/Edit'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
      path: '/ajout',
      name: 'Ajout',
      component: Ajout
    },
    {
      path: '/liste',
      name: 'Liste',
      component: Liste
    },
    {
      path:'/edit',
      name: 'Edit',
      component: Edit
    }
  ]
})
