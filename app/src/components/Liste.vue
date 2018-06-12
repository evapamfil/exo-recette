<template>
  <div>
    <ul v-for="item in info">
      <li>
       Titre : {{ item.title }}
      </li>
      <li>
        Description : {{ item.description }}
      </li>
      <li>
        Temps :{{ item.time }}
      </li>
      <li>
        <button v-on:click="DeleteData(item.id)">{{ item.id}}Supprimer</button>
      </li>
    </ul>
  </div>


</template>

<script>
  export default {
    name: "Liste",
    data() {
      return {
        info: null
      }
    },
    mounted() {
      this.$http
        .get('http://localhost:3000/liste-recette')
        .then(response => (this.info = response.data))
    },
    methods: {
      DeleteData: function(id) {
        this.$http
          .get('http://localhost:3000/delete/'+id)
          .then(function(response) {
            console.log(response.data)
          })
      }
    }
  }

</script>

<style scoped>

</style>
