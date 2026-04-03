package com.abcdev.bus_api.service.impl;

import com.abcdev.bus_api.dto.BusResponseDto;
import com.abcdev.bus_api.entity.Bus;
import com.abcdev.bus_api.repository.BusRepository;
import com.abcdev.bus_api.service.BusService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.*;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class BusServiceImpl implements BusService {

    private final BusRepository busRepository;

    @Override
    public Page<BusResponseDto> getAllBuses(int page, int size) {
        Pageable pageable = PageRequest.of(page, size, Sort.by("id").ascending());
        return busRepository.findAll(pageable).map(this::mapToDto);
    }

    @Override
    public BusResponseDto getBusById(Long id) {
        Bus bus = busRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Bus no encontrado con id: " + id));

        return mapToDto(bus);
    }

    private BusResponseDto mapToDto(Bus bus) {
        return new BusResponseDto(
                bus.getId(),
                bus.getBusNumber(),
                bus.getPlate(),
                bus.getCreatedAt(),
                bus.getFeatures(),
                bus.getActive(),
                bus.getBrand().getName()
        );
    }
}