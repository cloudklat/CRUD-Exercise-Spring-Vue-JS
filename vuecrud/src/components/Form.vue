<template>
  <div>
    <router-link to="/">
      <button class="btn btn-primary my-3 ml-3">Back</button>
    </router-link>
    <div class="d-flex justify-content-around">
      <form
        @submit.prevent="inputStudent"
        v-show="!success"
        class="border border-primary mt-5 col-8 p-5 rounded"
      >
        <h4>Add Student</h4>
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="name">Student Name</label>
            <input
              v-model="studentData.nama"
              type="text"
              class="form-control"
              id="name"
              required
              placeholder="Enter name"
            />
          </div>
          <div class="form-group col-md-6">
            <label for="softskill">Soft Skill</label>
            <input
              v-model="studentData.soft_skill"
              type="text"
              class="form-control"
              id="softskill"
              required
              placeholder="Enter soft skills"
            />
          </div>
        </div>
        <div class="form-group">
          <div class="form-row">
            <div class="form-group col-md-3">
              <label for="age">Student Age</label>
              <input
                v-model="studentData.umur"
                type="number"
                class="form-control"
                id="age"
                required
                placeholder="Enter age"
              />
            </div>
            <div class="form-group col-md-3">
              <label for="gender">Gender</label>
              <select
                v-model="studentData.jenis_kelamin"
                id="gender"
                class="form-control"
              >
                <option selected disabled value="">Choose...</option>
                <option id="male">Male</option>
                <option id="female">Female</option>
              </select>
            </div>
            <div class="form-group col-md-6">
              <label for="hardskill">Hard Skill</label>
              <input
                v-model="studentData.hard_skill"
                type="text"
                class="form-control"
                id="hardskill"
                required
                placeholder="Enter hard skills"
              />
            </div>
          </div>
        </div>

        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="email">Student Email</label>
            <input
              v-model="studentData.email"
              type="email"
              class="form-control"
              id="email"
              required
              placeholder="Enter email"
            />
          </div>
          <div class="form-group col-md-6">
            <label for="interest">Interest</label>
            <select
              id="interest"
              class="form-control"
              v-model="studentData.interest"
            >
              <option selected disabled value="">Choose...</option>
              <option id="datascience">Data Science</option>
              <option id="network">Network</option>
              <option id="webfrontend">Web Front-End</option>
              <option id="webbackend">Web Back-End</option>
              <option id="mobileapp">Mobile App</option>
            </select>
          </div>
        </div>

        <div class="form-group">
          <label for="selfdescriptions">Self Descriptions</label>
          <textarea
            v-model="studentData.deskripsi_diri"
            class="form-control"
            id="selfdescriptions"
            rows="3"
            placeholder="Describe about yourself.."
          ></textarea>
        </div>
        <button type="submit" class="btn btn-primary">{{ buttonValue }}</button>
      </form>

      <Success v-show="success"></Success>
    </div>
  </div>
</template>

<script>
import Success from "@/components/Success.vue";
import studentService from "@/services/studentService";
export default {
  name: "FormCom",
  components: {
    Success,
  },
  data() {
    return {
      studentData: {
        deskripsi_diri: null,
        email: null,
        hard_skill: null,
        interest: "",
        jenis_kelamin: "",
        nama: null,
        soft_skill: null,
        umur: null,
      },
      success: false,
      buttonValue: "Submit",
    };
  },
  methods: {
    inputStudent() {
      let data = this.studentData;
      let id = this.$route.params.id;
      let route = this.$route.fullPath;
      if (route === "/add") {
        studentService
          .create(data)
          .then((response) => {
            console.log(response.data);
            this.success = true;
          })
          .catch((e) => {
            console.log(e);
          });
      } else {
        studentService
          .updateStudent(id, data)
          .then((response) => {
            console.log(response.data);
            this.success = true;
          })
          .catch((e) => {
            console.log(e);
          });
      }
    },
    getStudentById(id) {
      studentService
        .getStudentById(id)
        .then((response) => {
          this.studentData = response.data;
          console.log(this.studentData);
        })
        .catch((e) => {
          console.log(e);
        });
    },
  },
  mounted() {
    if (this.$route.params.id) {
      this.getStudentById(this.$route.params.id);
      this.buttonValue = "Update";
    }
  },
};
</script>

<style></style>
