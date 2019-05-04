float distMultCircMax(float x, float y, ArrayList<Circle> cobjs) {
  float biggest = dist(x, y, cobjs.get(0).x, cobjs.get(0).y) - cobjs.get(0).size;

  for (int i = 1; i < cobjs.size(); i++) {
    float d = dist(x, y, cobjs.get(i).x, cobjs.get(i).y) - cobjs.get(i).size;

    if (d > biggest) biggest = d;
  }

  return biggest;
}

float distMultCircMin(float x, float y, ArrayList<Circle> cobjs) {
  float shortest = dist(x, y, cobjs.get(0).x, cobjs.get(0).y) - cobjs.get(0).size;

  for (int i = 1; i < cobjs.size(); i++) {
    float d = dist(x, y, cobjs.get(i).x, cobjs.get(i).y) - cobjs.get(i).size;

    if (d < shortest) shortest = d;
  }

  return shortest;
}
