package api.management.Dormitory.services;

import api.management.Dormitory.exceptions.ResourceNotFoundException;
import api.management.Dormitory.models.AppForLiving;
import api.management.Dormitory.repositories.AppForLivingRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class AppForLivingService {

    private final AppForLivingRepository appForLivingRepository;

    public List<AppForLiving> listAppForLivings() {
        return appForLivingRepository.findAll();
    }

    public AppForLiving getAppForLivingById(Long id) {
        return appForLivingRepository.findById(id).orElse(null);
    }

    public AppForLiving createAppForLiving(AppForLiving appForLiving) {
        return appForLivingRepository.save(appForLiving);
    }

    public void deleteAppForLiving(Long id) {
        AppForLiving appForLiving = appForLivingRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("AppForLiving", "id", id));

        appForLivingRepository.delete(appForLiving);
    }

    public AppForLiving updateAppForLiving(Long id, AppForLiving appForLivingDetails) {
        AppForLiving appForLiving = appForLivingRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("AppForLiving", "id", id));

        appForLiving.setDateOfApp(appForLivingDetails.getDateOfApp());
        appForLiving.setRequestStatus(appForLivingDetails.getRequestStatus());
        appForLiving.setIdStudent(appForLivingDetails.getIdStudent());

        return appForLivingRepository.save(appForLiving);
    }

}
