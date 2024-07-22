String formatDateTime({required DateTime timestamp}) {
  final now = DateTime.now();
  final difference = now.difference(timestamp);

  if (isInLastMinute(difference)) {
    int seconds = difference.inSeconds;
    return '$seconds seconds ago';
  } else if (isInLastHour(difference)) {
    int minutes = difference.inMinutes;
    return '$minutes minutes ago';
  } else if (isInLastDay(difference)) {
    int hours = difference.inHours;
    return '$hours hours ago';
  } else if (isInLast7Days(difference)) {
    int days = difference.inDays;
    return '$days days ago';
  } else if (isInLastMonth(difference)) {
    int weeks = dateTimeToWeeks(difference);
    return '$weeks weeks ago';
  } else if (isInLastYear(difference)) {
    int months = dateTimeToMonths(difference);
    return '$months months ago';
  } else {
    int years = dateTimeToYears(difference);
    return '$years years ago';
  }
}

bool isInLastMinute(Duration difference) => difference.inMinutes < 1;

bool isInLastHour(Duration difference) => difference.inHours < 1;

bool isInLastDay(Duration difference) => difference.inDays < 1;

bool isInLast7Days(Duration difference) => difference.inDays < 7;

bool isInLastMonth(Duration difference) => difference.inDays < 30;

bool isInLastYear(Duration difference) => difference.inDays < 365;

int dateTimeToWeeks(Duration difference) => (difference.inDays / 7).floor();

int dateTimeToMonths(Duration difference) => (difference.inDays / 30).floor();

int dateTimeToYears(Duration difference) => (difference.inDays / 365).floor();
