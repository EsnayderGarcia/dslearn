package com.devsuperior.dslearnbds.DTOs;

import com.devsuperior.dslearnbds.entities.Notification;

import java.io.Serializable;
import java.time.Instant;
import java.util.Objects;

public class NotificationDTO implements Serializable {
    private Long id;

    private String text;

    private Instant moment;

    private boolean read;

    private String route;

    public NotificationDTO() {
    }

    public NotificationDTO(Notification notification) {
        this.id = notification.getId();
        this.text = notification.getText();
        this.moment = notification.getMoment();
        this.read = notification.isRead();
        this.route = notification.getRoute();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Instant getMoment() {
        return moment;
    }

    public void setMoment(Instant moment) {
        this.moment = moment;
    }

    public boolean isRead() {
        return read;
    }

    public void setRead(boolean read) {
        this.read = read;
    }

    public String getRoute() {
        return route;
    }

    public void setRoute(String route) {
        this.route = route;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        NotificationDTO that = (NotificationDTO) o;
        return Objects.equals(id, that.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
