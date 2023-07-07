package com.youtube.model.vo;

import java.util.Date;

public class VideoLike {

	private int VLikeCode;
	private Date VLikeDate;
	
	private Video video;
	private Member member;
	public VideoLike() {}
	public VideoLike(int vLikeCode, Date vLikeDate, Video video, Member member) {
		VLikeCode = vLikeCode;
		VLikeDate = vLikeDate;
		this.video = video;
		this.member = member;
	}
	public int getVLikeCode() {
		return VLikeCode;
	}
	public void setVLikeCode(int vLikeCode) {
		VLikeCode = vLikeCode;
	}
	public Date getVLikeDate() {
		return VLikeDate;
	}
	public void setVLikeDate(Date vLikeDate) {
		VLikeDate = vLikeDate;
	}
	public Video getVideo() {
		return video;
	}
	public void setVideo(Video video) {
		this.video = video;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	@Override
	public String toString() {
		return "VideoLike [VLikeCode=" + VLikeCode + ", VLikeDate=" + VLikeDate + ", video=" + video + ", member="
				+ member + "]";
	}
}
