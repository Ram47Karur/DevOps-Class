package com.tc.training.dockerdemo.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * A REST controller to provide the current date and time.
 */
@RestController
public class DateTimeController {

    /**
     * Handles GET requests to the /datetime endpoint.
     * @return a Map containing the current date and time.
     */
    @GetMapping(path = "/datetime")
    public Map<String, String> getCurrentDateTime() {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedDateTime = now.format(formatter);
        return Map.of("currentDateTime", formattedDateTime);
    }
}
