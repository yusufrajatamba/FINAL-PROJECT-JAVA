package com.yusuf.bus.payload.response;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class JwtResponse {

	private final String type = "Bearer";

	private String token;
	private Long id;
	private String username;
	private String email;
	private String firstName;
	private String lastName;
	private String mobileNumber;
	private List<String> roles;
}
