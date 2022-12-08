<template>
  <div>
    <Header></Header>
    <Form></Form>
    <Success class="d-none"></Success>
    <Copyright></Copyright>
  </div>
</template>
<script>
import Header from "../components/Header.vue";
import Form from "../components/Form.vue";
import Copyright from "../components/Copyright.vue";
import Success from "../components/Success.vue";
export default {
  name: "AddData",
  components: {
    Header,
    Form,
    Success,
    Copyright,
  },
};
</script>

<style scoped></style>
