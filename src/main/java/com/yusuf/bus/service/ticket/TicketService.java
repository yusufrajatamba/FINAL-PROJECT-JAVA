package com.yusuf.bus.service.ticket;

import java.text.ParseException;

import com.yusuf.bus.model.bus.Ticket;
import com.yusuf.bus.payload.request.TicketRequest;

public interface TicketService {
	Ticket bookingTicket(TicketRequest ticketRequest) throws ParseException;

	Ticket updatingTicket(Long id, TicketRequest ticketRequest) throws ParseException;
}
