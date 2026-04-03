package com.abcdev.bus_api.dto;

import java.time.LocalDateTime;

public record BusResponseDto(
        Long id,
        String busNumber,
        String plate,
        LocalDateTime createdAt,
        String features,
        Boolean active,
        String brandName
) {
}