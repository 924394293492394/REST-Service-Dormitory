package api.management.Dormitory.services;

import api.management.Dormitory.exceptions.ResourceNotFoundException;
import api.management.Dormitory.models.Student;
import api.management.Dormitory.repositories.StudentRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class StudentService {

    private final StudentRepository studentRepository;

    public List<Student> listStudents() {
        return studentRepository.findAll();
    }

    public Student getStudentById(Long id) {
        return studentRepository.findById(id).orElse(null);
    }

    public Student createStudent(Student student) {
        return studentRepository.save(student);
    }

    public void deleteStudent(Long id) {
        Student student = studentRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Student", "id", id));

        studentRepository.delete(student);
    }

    public Student updateStudent(Long id, Student studentDetails) {
        Student student = studentRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Student", "id", id));

        student.setFirstName(studentDetails.getFirstName());
        student.setLastName(studentDetails.getLastName());
        student.setGroup(studentDetails.getGroup());
        student.setPhone(studentDetails.getPhone());
        student.setIdRoom(studentDetails.getIdRoom());

        return studentRepository.save(student);
    }
}
