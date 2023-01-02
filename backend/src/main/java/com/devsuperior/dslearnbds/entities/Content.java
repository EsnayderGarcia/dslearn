package com.devsuperior.dslearnbds.entities;

public class Content extends Lesson {

	private static final long serialVersionUID = 1L;
	
	private String textContent;
	
	private String videoUr;
	
	public Content() {
	}

	public Content(Long id, String title, Integer position, Section section, String textContent, String videoUr) {
		super(id, title, position, section);
		this.textContent = textContent;
		this.videoUr = videoUr;
	}

	public String getTextContent() {
		return textContent;
	}

	public void setTextContent(String textContent) {
		this.textContent = textContent;
	}

	public String getVideoUr() {
		return videoUr;
	}

	public void setVideoUr(String videoUr) {
		this.videoUr = videoUr;
	}
	
}
