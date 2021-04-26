// todo: safe defaults

/// Cards are what you review
/// There can be multiple cards for each node, as determined by the Template
class Card {
  /// the epoch milliseconds of when the card was created
  int id;

  /// notes.id
  int nid;

  /// deck id (available in col table)
  int did;

  /// ordinal : identifies which of the card templates or cloze deletions it corresponds to
  /// for card templates, valid values are from 0 to num templates - 1
  /// for cloze deletions, valid values are from 0 to max cloze index - 1 (they're 0 indexed despite the first being called `c1`)
  int ord;

  /// modification time as epoch seconds
  int mod;

  /// update sequence number : used to figure out diffs when syncing.
  /// value of -1 indicates changes that need to be pushed to server.
  /// usn < server usn indicates changes that need to be pulled from server.
  int usn;

  /// 0=new, 1=learning, 2=review, 3=relearning
  int type;

  /// -3=user buried(In scheduler 2),
  /// -2=sched buried (In scheduler 2),
  /// -2=buried(In scheduler 1),
  /// -1=suspended,
  /// 0=new, 1=learning, 2=review (as for type)
  /// 3=in learning, next rev in at least a day after the previous review
  /// 4=preview
  int queue;

  /// Due is used differently for different card types:
  /// new: note id or random int
  /// due: integer day, relative to the collection's creation time
  /// learning: integer timestamp in second
  int due;

  /// interval (used in SRS algorithm). Negative = seconds, positive = days
  int ivl;

  /// The ease factor of the card in permille (parts per thousand). If the ease factor is 2500, the card’s interval will be multiplied by 2.5 the next time you press Good.
  int factor;

  /// number of reviews
  int reps;

  /// the number of times the card went from a "was answered correctly"
  /// to "was answered incorrectly" state
  int lapses;

  /// of the form a*1000+b, with:
  /// b the number of reps left till graduation
  /// a the number of reps left today
  int left;

  /// original due: In filtered decks, it's the original due date that the card had before moving to filtered.
  /// If the card lapsed in scheduler1, then it's the value before the lapse. (This is used when switching to scheduler 2. At this time, cards in learning becomes due again, with their previous due date)
  /// In any other case it's 0.
  int odue;

  /// original did: only used when the card is currently in filtered deck
  int odid;

  /// an integer. This integer mod 8 represents a "flag", which can be see in browser and while reviewing a note. Red 1, Orange 2, Green 3, Blue 4, no flag: 0. This integer divided by 8 represents currently nothing
  int flags;

  /// Currently Unused
  String? data;

  Card(
      this.id,
      this.nid,
      this.did,
      this.ord,
      this.mod,
      this.usn,
      this.type,
      this.queue,
      this.due,
      this.ivl,
      this.factor,
      this.reps,
      this.lapses,
      this.left,
      this.odue,
      this.odid,
      this.flags,
      this.data);
}
