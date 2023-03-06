package com.devsuperior.dslearnbds.resources;

import com.devsuperior.dslearnbds.DTOs.DeliverRevisionDTO;
import com.devsuperior.dslearnbds.services.DeliverService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/deliveries")
public class DeliverResource {
    @Autowired
    private DeliverService deliverService;

    @PutMapping("/{deliverId}")
    public ResponseEntity<Void> saveRevision(@PathVariable Long deliverId, @RequestBody DeliverRevisionDTO dto) {
        deliverService.saveRevision(deliverId, dto);
        return ResponseEntity.noContent().build();
    }
}
