package com.yusuf.bus.service.stop;

import com.yusuf.bus.model.bus.Stop;
import com.yusuf.bus.payload.request.StopRequest;

public interface StopService {

	Stop addNewStop(StopRequest stopReq);

	Stop updatingStop(Long id, StopRequest stopReq);
}
