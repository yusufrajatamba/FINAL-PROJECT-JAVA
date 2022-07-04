package com.yusuf.bus.service.stop;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ResponseStatusException;

import com.yusuf.bus.model.bus.Stop;
import com.yusuf.bus.payload.request.StopRequest;
import com.yusuf.bus.repository.StopRepository;

@Component
public class StopServiceImpl implements StopService {

	@Autowired
	StopRepository stopRepository;

	@Override
	public Stop addNewStop(StopRequest stopReq) {
		try {
			Stop stop = new Stop(stopReq.getCode(), stopReq.getName(), stopReq.getDetail());
			Stop savedStop = stopRepository.save(stop);
			return savedStop;

		} catch (Exception e) {
			throw new ResponseStatusException(HttpStatus.BAD_REQUEST, e.getMessage(), e.getCause());
		}
	}

	@Override
	public Stop updatingStop(Long id, StopRequest stopReq) {

		Optional<Stop> stop = stopRepository.findById(id);

		if (!stop.isPresent()) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "No stop found");
		}

		try {
			stop.get().setCode(stopReq.getCode());
			stop.get().setName(stopReq.getName());
			stop.get().setDetail(stopReq.getDetail());

			Stop savedStop = stopRepository.save(stop.get());
			return savedStop;

		} catch (Exception e) {
			throw new ResponseStatusException(HttpStatus.BAD_REQUEST, e.getMessage(), e.getCause());
		}
	}

}
