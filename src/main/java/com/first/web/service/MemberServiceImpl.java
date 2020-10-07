package com.first.web.service;

import com.first.web.domain.Member;
import com.first.web.domain.MemberAuth;
import com.first.web.mapper.MemberMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper mapper;

    @Transactional
    @Override
    public void register(Member member) throws Exception {
        
        mapper.create(member);
        
        MemberAuth memberAuth = new MemberAuth();

        memberAuth.setUserNo(member.getUserNo());
        memberAuth.setAuth("ROLE_MEMBER");

        mapper.createAuth(memberAuth);
        
    } 
    
}    
