<template>
  <ul>
    <li>
      <router-link to="/ajout">Ajouter une recette</router-link>
    </li>
    <li>
      <router-link to="/liste">Voir les recettes</router-link>
    </li>
    <li>
      <router-link to="/edit">Modifier les recettes</router-link>
    </li>
  </ul>
  </template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
