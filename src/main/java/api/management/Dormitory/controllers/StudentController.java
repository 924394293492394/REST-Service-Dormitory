package api.management.Dormitory.controllers;

import api.management.Dormitory.models.Student;
import api.management.Dormitory.services.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
@RequiredArgsConstructor
public class StudentController {

    private final StudentService studentService;

    @GetMapping("/students")
    public String students(Model model) {
        model.addAttribute("students", studentService.listStudents());
        return "students";
    }

    @GetMapping("student/{id}")
    public String studentInfo(@PathVariable Long id, Model model) {
        model.addAttribute("student", studentService.getStudentById(id));
        return "student-info";
    }

    @GetMapping("/student/create/new")
    public String studentCreate() {
        return "student-create";
    }

    @GetMapping("/student/edit/{id}")
    public String studentEdit(@PathVariable Long id, Model model) {
        model.addAttribute("student", studentService.getStudentById(id));
        return "student-edit";
    }

    @PostMapping("/student/create")
    public String createStudent(@RequestBody Student student) {
        studentService.createStudent(student);
        return "redirect:/students";
    }

    @PostMapping("/student/update/{id}")
    public String updateStudent(@PathVariable Long id, @RequestBody Student student) {
        studentService.updateStudent(id, student);
        return "redirect:/student/" + id;
    }

    @PostMapping("/student/delete/{id}")
    public String deleteStudent(@PathVariable Long id) {
        studentService.deleteStudent(id);
        return "redirect:/students";
    }

}
