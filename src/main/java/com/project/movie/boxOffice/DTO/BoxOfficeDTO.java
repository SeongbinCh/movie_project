package com.project.movie.boxOffice.DTO;

import java.sql.Timestamp;

public class BoxOfficeDTO {
	private int movieId;
	private String movieName;
	private Timestamp movieShowTime;
	
	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public Timestamp getMovieShowTime() {
		return movieShowTime;
	}
	public void setMovieShowTime(Timestamp movieShowTime) {
		this.movieShowTime = movieShowTime;
	}
}
