float distMultCircMax(float x, float y, ArrayList<MarchableObject> cobjs) {
  float biggest = cobjs.get(0).DE(x, y);

  for (int i = 1; i < cobjs.size(); i++) {
    float d = cobjs.get(i).DE(x, y);

    if (d > biggest) biggest = d;
  }

  return biggest;
}

float distMultCircMin(float x, float y, ArrayList<MarchableObject> cobjs) {
  float shortest = cobjs.get(0).DE(x, y);

  for (int i = 1; i < cobjs.size(); i++) {
    float d = cobjs.get(i).DE(x, y);

    if (d < shortest) shortest = d;
  }

  return shortest;
}
