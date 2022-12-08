<template>
  <div class="">
    <Header class="img"></Header>
    <div>
      <Card class="col-12 m-3"></Card>
    </div>
    <Copyright></Copyright>
  </div>
</template>

<script>
import Header from "@/components/Header.vue";
import Card from "@/components/Card.vue";
import Copyright from "@/components/Copyright.vue";

export default {
  name: "HomePage",
  components: {
    Header,
    Card,
    Copyright,
  },
};
</script>

<style scoped>
.card {
  display: flex;
  flex-wrap: wrap;
}
</style>
