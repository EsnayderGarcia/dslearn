package com.devsuperior.dslearnbds.DTOs;

import com.devsuperior.dslearnbds.enumerations.DeliverStatus;

import java.io.Serializable;

public class DeliverRevisionDTO implements Serializable {
    private String feedback;

    private Integer correctCount;

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public Integer getCorrectCount() {
        return correctCount;
    }

    public void setCorrectCount(Integer correctCount) {
        this.correctCount = correctCount;
    }
}
