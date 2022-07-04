package com.yusuf.bus.service.user;

import com.yusuf.bus.model.user.User;
import com.yusuf.bus.payload.request.SignupRequest;
import com.yusuf.bus.payload.request.UserRequest;

public interface UserService {

	User registerNewUser(SignupRequest SignupRequest);

	User updatingUser(UserRequest userRequest);
}
