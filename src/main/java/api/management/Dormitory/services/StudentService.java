package api.management.Dormitory.services;

import api.management.Dormitory.repositories.StudentRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class StudentService {

    private final StudentRepository studentRepository;
}
