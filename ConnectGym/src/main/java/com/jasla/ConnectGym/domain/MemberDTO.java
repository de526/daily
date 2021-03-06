package com.jasla.ConnectGym.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberDTO {
	
	private int memNo;
	private int gymNo;
	private String memMail;
	private String memPw;
	private String memNick;
	private String memName;
	private char memGender;
	private String memBirth;
	private String memZipcode;
	private String memAddr;
	private String memDeAddr;
	private String memPhone;
	private char memLeave;
	private Date memJoindate;
	private Date memUpdate;
	private int memLevel;
	private String trInfo;
	private String trComment;
	private String trTag;
	private int trPrice;
	private String trWeekday;
	private String trSaturday;
	private String trSunday;
	private String trHoliday;
	
	

}
