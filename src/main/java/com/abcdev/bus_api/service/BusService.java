package com.abcdev.bus_api.service;

import com.abcdev.bus_api.dto.BusResponseDto;
import org.springframework.data.domain.Page;

public interface BusService {
    Page<BusResponseDto> getAllBuses(int page, int size);
    BusResponseDto getBusById(Long id);
}