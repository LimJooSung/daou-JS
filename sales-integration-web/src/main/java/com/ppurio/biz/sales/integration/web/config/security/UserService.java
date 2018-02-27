package com.ppurio.biz.sales.integration.web.config.security;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.security.crypto.password.StandardPasswordEncoder;

public class UserService implements UserDetailsService {

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//StandardPasswordEncoder encoder = new StandardPasswordEncoder();
        //User entazUser = new User();
        //entazUser.setUsername(username);
        //entazUser.setPassword(encoder.encode("abcd"));
		User user = new User();
		user.setUsername(username);
        return user;
	}

}
