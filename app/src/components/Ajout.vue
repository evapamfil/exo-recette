<template>
  <div>
    <h1>Ajouter une recette</h1>
    <form action="http://localhost:3000/recette" method="POST">
      <label for="title">Titre de la recette</label>
      <input type="text" name="title">
      <!--<label for="ingredient">Ingredients</label>-->
      <!--<input type="text" name="ingredient">-->
      <label for="description">etapes</label>
      <textarea name="description"></textarea>
      <!--<label for="photo">Photos</label>
      <input type="file" name="photo">-->
      <label for="time">Time</label>
      <input type="text" name="time">
      <button type="submit"> <!--@click.stop.prevent="submit()"-->Valider</button>
    </form>
  </div>
</template>

<script>
    export default {
        name: "Ajout",
      data(){
        return {

        }
      },
      /*methods: {
        submit(){
          //if you want to send any data into server before redirection then you can do it here
          this.$router.push("/Liste");
        }
      }*/
    }
</script>

<style scoped>

</style>
