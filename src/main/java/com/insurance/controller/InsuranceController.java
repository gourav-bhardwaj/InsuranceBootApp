package com.insurance.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/insurance")
public class InsuranceController {

    @GetMapping("/demo")
    public ResponseEntity<Map<String, Object>> demo() {
        Map<String, Object> respMap = new HashMap<>();
        respMap.put("message", "This is a demo message!");
        respMap.put("timestamp", LocalDateTime.now());
        return new ResponseEntity<>(respMap, HttpStatus.OK);
    }

    @GetMapping("/jokeroi")
    public ResponseEntity<Map<String, Object>> app() {
        Map<String, Object> respMap = new HashMap<>();
        respMap.put("message", "Hi, i m joker!");
        respMap.put("fulltime", LocalDateTime.now());
        return new ResponseEntity<>(respMap, HttpStatus.OK);
    }

}
