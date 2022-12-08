<template>
  <div>
    <Header></Header>
    <Form></Form>
    <Copyright></Copyright>
  </div>
</template>

<script>
import Header from "@/components/Header.vue";
import Form from "@/components/Form.vue";
import Copyright from "@/components/Copyright.vue";
export default {
  name: "UpdateData",
  components: {
    Header,
    Form,
    Copyright,
  },
};
</script>

<style scoped></style>
