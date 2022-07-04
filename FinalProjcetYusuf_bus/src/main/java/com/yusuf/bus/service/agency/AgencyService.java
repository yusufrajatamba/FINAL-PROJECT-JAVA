package com.yusuf.bus.service.agency;

import com.yusuf.bus.model.bus.Agency;
import com.yusuf.bus.payload.request.AgencyRequest;

public interface AgencyService {

	Agency updatingAgency(Long id, AgencyRequest agencyDetail);

	Agency addNewAgency(AgencyRequest agencyRequest);

}
