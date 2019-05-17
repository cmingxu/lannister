<template>
  <div id="app">
    <p>{{ message }}</p>
    <HelloComponent />
  </div>
</template>

<script>
import HelloComponent from './components/hello'
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  },
  components: {
    HelloComponent,
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
