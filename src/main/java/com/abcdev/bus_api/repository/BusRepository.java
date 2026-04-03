package com.abcdev.bus_api.repository;

import com.abcdev.bus_api.entity.Bus;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BusRepository extends JpaRepository<Bus, Long> {
}