package com.yusuf.bus.service.bus;

import com.yusuf.bus.model.bus.Bus;
import com.yusuf.bus.payload.request.BusRequest;

public interface BusService {

	Bus addNewBus(BusRequest busRequest);

	Bus updatingBus(Long id, BusRequest busRequest);
}
