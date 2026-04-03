package com.abcdev.bus_api.controller;

import com.abcdev.bus_api.dto.BusResponseDto;
import com.abcdev.bus_api.service.BusService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/bus")
@RequiredArgsConstructor
public class BusController {

    private final BusService busService;

    @GetMapping
    public Page<BusResponseDto> getAllBuses(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size
    ) {
        return busService.getAllBuses(page, size);
    }

    @GetMapping("/{id}")
    public BusResponseDto getBusById(@PathVariable Long id) {
        return busService.getBusById(id);
    }
}