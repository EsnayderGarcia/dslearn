package com.devsuperior.dslearnbds.services;

import com.devsuperior.dslearnbds.DTOs.DeliverRevisionDTO;
import com.devsuperior.dslearnbds.entities.Deliver;
import com.devsuperior.dslearnbds.entities.Task;
import com.devsuperior.dslearnbds.enumerations.DeliverStatus;
import com.devsuperior.dslearnbds.repositories.DeliverRepository;
import com.devsuperior.dslearnbds.repositories.LessonRepository;
import com.devsuperior.dslearnbds.services.exceptions.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;

@Service
public class DeliverService {
    @Autowired
    private DeliverRepository deliverRepository;

    @Autowired
    private LessonRepository lessonRepository;

    @PreAuthorize("hasAnyRole('ADMIN', 'INSTRUCTOR')")
    @Transactional
    public void saveRevision(Long deliverId, DeliverRevisionDTO dto) {
        try {
            Deliver deliver = deliverRepository.getOne(deliverId);
            Task task = (Task) lessonRepository.findById(deliver.getLesson().getId()).get();

            deliver.setFeedback(dto.getFeedback());
            deliver.setCorrectCount(dto.getCorrectCount());
            deliver.setStatus(dto.getCorrectCount() >= task.getApprovalCount() ? DeliverStatus.ACCEPTED : DeliverStatus.REJECTED);

            deliverRepository.save(deliver);
        }
        catch (EntityNotFoundException ex) {
            throw new ResourceNotFoundException("Entrega não encontrada!");
        }
    }
}
