class TurnTicket {
  final int turnNumber;

  TurnTicket(this.turnNumber);
}

class TurnNumberSequence {
  static int _turnNumber = -1;

  static int nextTurnNumber() => ++_turnNumber;
}

class TicketDispenser {
  TurnTicket getTurnTicket() => TurnTicket(TurnNumberSequence.nextTurnNumber());
}
