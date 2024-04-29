package api.management.Dormitory.controllers;

import api.management.Dormitory.services.StudentService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;

@Controller
@RequiredArgsConstructor
public class StudentController {

    private final StudentService studentService;
}
