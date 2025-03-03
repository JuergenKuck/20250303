void main() {
  print(getMovieRating(15, true, 16));
  print(getMovieRating(13, false, 16));
}

String getMovieRating(int age, bool hasParentalConsent, int movingAgeRating) {
  String result =
      "Alter: $age, Elternbegleitung: $hasParentalConsent, Altersfreigabe: $movingAgeRating";

  if (age >= movingAgeRating ||
      movingAgeRating - age <= 2 && hasParentalConsent) {
    result = "$result -> Film erlaubt!";
  } else {
    result = "$result -> Film nicht erlaubt!";
  }
  return result;
}
