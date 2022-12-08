import http from "../http-common";

class studentService {
  create(data) {
    return http.post("/student/insert", data);
  }

  getAll() {
    return http.get("/student/getAll");
  }

  updateStudent(id, data) {
    return http.put(`/student/update/${id}`, data);
  }

  deleteStudent(id) {
    return http.delete(`/student/delete/${id}`);
  }

  getStudentById(id) {
    return http.get(`/student/getById/${id}`);
  }
}

export default new studentService();
