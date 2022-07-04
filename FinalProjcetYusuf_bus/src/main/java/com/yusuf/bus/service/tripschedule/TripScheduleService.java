package com.yusuf.bus.service.tripschedule;

import java.text.ParseException;

import com.yusuf.bus.model.bus.TripSchedule;
import com.yusuf.bus.payload.request.TripScheduleRequest;

public interface TripScheduleService {
	TripSchedule addNewTrip(TripScheduleRequest tripScheduleRequest) throws ParseException;

	TripSchedule updatingTrip(Long id, TripScheduleRequest tripScheduleRequest) throws ParseException;
}
