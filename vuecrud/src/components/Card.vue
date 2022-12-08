<template>
  <div>
    <router-link to="/add">
      <button class="btn btn-primary my-3 ml-3">Add</button>
    </router-link>
    <div class="card-container d-flex flex-wrap">
      <div class="col-4 mt-4" v-for="item in studentData" :key="item.id">
        <div class="card p-3 border">
          <h5 class="card-title mb-3">
            {{ item.nama }}, {{ item.umur }} years old
          </h5>
          <p>{{ item.deskripsi_diri }}</p>
          <table>
            <tr>
              <td>Email</td>
              <td>: {{ item.email }}</td>
            </tr>
            <tr>
              <td>Soft Skill</td>
              <td>: {{ item.soft_skill }}</td>
            </tr>
            <tr>
              <td>Hard Skill</td>
              <td>: {{ item.hard_skill }}</td>
            </tr>
            <tr>
              <td>Interest</td>
              <td>: {{ item.interest }}</td>
            </tr>
          </table>

          <div class="d-flex justify-content-between mt-3">
            <div>
              <router-link
                :to="{ name: 'Update', params: { id: item.id } }"
                type="submit"
                class="btn btn-primary mr-2"
                >Update</router-link
              >
              <router-link to="/">
                <button
                  type="submit"
                  @click="deleteStudent(item.id)"
                  class="btn btn-danger"
                >
                  Delete
                </button>
              </router-link>
              <img
                class="male"
                v-if="item.jenis_kelamin == 'Male'"
                src="../assets/male.png"
                alt=""
              />
              <img
                class="female"
                v-else-if="item.jenis_kelamin == 'Female'"
                src="../assets/female.png"
                alt=""
              />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import studentService from "@/services/studentService.js";
export default {
  name: "CardComponent",
  data() {
    return {
      studentData: null,
    };
  },

  methods: {
    getStudent() {
      studentService
        .getAll()
        .then((response) => {
          this.studentData = response.data;
          console.log(this.studentData);
        })
        .catch((e) => {
          console.log(e);
        });
    },

    deleteStudent(id) {
      if (confirm("Apakah anda yakin ingin menghapus data ?")) {
        studentService
          .deleteStudent(id)
          .then((response) => {
            console.log(response.data);
            this.success = true;
          })
          .catch((e) => {
            console.log(e);
          });
      } else {
        alert("Hapus Telah Dibatalkan");
      }
    },
  },

  mounted() {
    this.getStudent();
  },
};
</script>

<style scoped>
.male {
  width: auto;
  height: 40px;
}
.female {
  width: auto;
  height: 40px;
}
.btn {
  margin: 5px;
}
</style>
>
