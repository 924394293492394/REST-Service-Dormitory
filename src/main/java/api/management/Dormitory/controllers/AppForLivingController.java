package api.management.Dormitory.controllers;

import api.management.Dormitory.services.AppForLivingService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;

@Controller
@RequiredArgsConstructor
public class AppForLivingController {

    private final AppForLivingService appForLivingService;

}
