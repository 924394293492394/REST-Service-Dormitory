package api.management.Dormitory.services;

import api.management.Dormitory.repositories.AppForLivingRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class AppForLivingService {

    private final AppForLivingRepository appForLivingRepository;
}
