package com.youtube.model.vo;

import java.util.Date;

public class VideoComment {

	private int CommentCode;
	private String CommentDesc;
	private Date CommentDate;
	private int CommentParent;
	
	private Video video;
	private Member member;
	public VideoComment() {}
	public VideoComment(int commentCode, String commentDesc, Date commentDate, int commentParent, Video video,
			Member member) {
		CommentCode = commentCode;
		CommentDesc = commentDesc;
		CommentDate = commentDate;
		CommentParent = commentParent;
		this.video = video;
		this.member = member;
	}
	public int getCommentCode() {
		return CommentCode;
	}
	public void setCommentCode(int commentCode) {
		CommentCode = commentCode;
	}
	public String getCommentDesc() {
		return CommentDesc;
	}
	public void setCommentDesc(String commentDesc) {
		CommentDesc = commentDesc;
	}
	public Date getCommentDate() {
		return CommentDate;
	}
	public void setCommentDate(Date commentDate) {
		CommentDate = commentDate;
	}
	public int getCommentParent() {
		return CommentParent;
	}
	public void setCommentParent(int commentParent) {
		CommentParent = commentParent;
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
		return "VideoComment [CommentCode=" + CommentCode + ", CommentDesc=" + CommentDesc + ", CommentDate="
				+ CommentDate + ", CommentParent=" + CommentParent + ", video=" + video + ", member=" + member + "]";
	}
	
}
