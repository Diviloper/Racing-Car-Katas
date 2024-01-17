import 'package:test/test.dart';

import '../src/turn_ticket.dart';

void main() {
  test('Ticket Dispenser does something', () {
    final dispenser = TicketDispenser();
    final ticket = dispenser.getTurnTicket();
    expect(ticket, TurnTicket);
  });
}
