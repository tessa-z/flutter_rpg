mixin Stats {
  int _health = 10;
  int _attack = 10;
  int _defense = 10;
  int _skill = 10;
  int _points = 10;

  int get points => _points;

  Map<String, int> get statsAsMap => {
    'health': _health,
    'attack': _attack,
    'defense': _defense,
    'skill': _skill,
  };

  List<Map<String, String>> get statsAsFormattedList => [
    {'title': 'Health', 'value': _health.toString()},
    {'title': 'Attack', 'value': _attack.toString()},
    {'title': 'Defense', 'value': _defense.toString()},
    {'title': 'Skill', 'value': _skill.toString()},
  ];

  void increaseStat(String stat) {
    switch (stat) {
      case 'health':
        _health += 1;
        break;
      case 'attack':
        _attack += 1;
        break;
      case 'defense':
        _defense += 1;
        break;
      case 'skill':
        _skill += 1;
        break;
      default:
        throw ArgumentError('Invalid stat: $stat');
    }
  }

  void decreaseStat(String stat) {
    switch (stat) {
      case 'health':
        if (_health > 5) _health -= 1;
        break;
      case 'attack':
        if (_attack > 5) _attack -= 1;
        break;
      case 'defense':
        if (_defense > 5) _defense -= 1;
        break;
      case 'skill':
        if (_skill > 5) _skill -= 1;
        break;
      default:
        throw ArgumentError('Invalid stat: $stat');
    }
    _points += 1;
  }
}
