package com.first.web.controller;

import com.first.web.domain.Member;
import com.first.web.service.MemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.java.Log;

@Log
@RestController
@RequestMapping("/users")
public class MemberController {

    @Autowired
    private MemberService service;

    private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @RequestMapping(value = "", method = RequestMethod.POST)
    public ResponseEntity<Member> register(@Validated @RequestBody Member member)
    throws Exception {
        log.info("member.getUserName() = " + member.getUserName());

        String inputPassword = member.getUserPw();
        member.setUserPw(passwordEncoder.encode(inputPassword));
        
        service.register(member);

        log.info("register member.getUserNo() = " + member.getUserNo());

        return new ResponseEntity<>(member, HttpStatus.OK);
        
    }
    
}
