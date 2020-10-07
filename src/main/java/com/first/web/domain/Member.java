package com.first.web.domain;

import java.util.Date;
import java.util.List;
import javax.validation.constraints.NotBlank;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

@Data
public class Member {

    private int userNo;

    @NotBlank
    private String userId;

    @NotBlank
    private String userPw;

    @NotBlank
    private String userName;

    private String userEmail;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date regDate;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date updDate;

    private List<MemberAuth> authList;
    
}
