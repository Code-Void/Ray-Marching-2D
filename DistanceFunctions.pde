float distMultCircMax(float x, float y, ArrayList<Circle> cobjs) {
  float biggest = dist(x, y, cobjs.get(0).cx, cobjs.get(0).cy) - cobjs.get(0).radius;

  for (int i = 1; i < cobjs.size(); i++) {
    float d = dist(x, y, cobjs.get(i).cx, cobjs.get(i).cy) - cobjs.get(i).radius;

    if (d > biggest) biggest = d;
  }

  return biggest;
}

float distMultCircMin(float x, float y, ArrayList<Circle> cobjs) {
  float shortest = dist(x, y, cobjs.get(0).cx, cobjs.get(0).cy) - cobjs.get(0).radius;

  for (int i = 1; i < cobjs.size(); i++) {
    float d = dist(x, y, cobjs.get(i).cx, cobjs.get(i).cy) - cobjs.get(i).radius;

    if (d < shortest) shortest = d;
  }

  return shortest;
}
