package com.first.web.mapper;

import com.first.web.domain.Member;
import com.first.web.domain.MemberAuth;

public interface MemberMapper {

    public void create(Member member) throws Exception;

    public void createAuth(MemberAuth memberAuth) throws Exception;
    
}
