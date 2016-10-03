void lerp(ArrayList<Float> as, ArrayList<Float> bs, float t, ArrayList<Float> dest) {
    int i=0;
    int j=0;
    int k=0;
    int maxI = as.size() - 1;
    int maxJ = bs.size() - 1;
    while (i <= maxI && j <= maxJ) {
        float rangeI = maxI - i;
        float rangeJ = maxJ - j;
        if (rangeI == rangeJ) {
            setIndex(dest, k, lerp(as.get(i), bs.get(j), t));
            i++;
            j++;
            k++;
        }
        else if (rangeI < rangeJ) {
            int n = ceil(rangeJ / rangeI);
            for (int x=0; x<n; x++) {
                setIndex(dest, k, lerp(as.get(i), bs.get(j), t));
                k++;
                j++;
            }
            i++;
        }
        else {
            int n = ceil(rangeI / rangeJ);
            for (int x=0; x<n; x++) {
                setIndex(dest, k, lerp(as.get(i), bs.get(j), t));
                k++;
                i++;
            }
            j++;
        }
    }
}

void setIndex(ArrayList xs, int i, Object obj) {
    if (xs.size() <= i) {
        xs.add(i, obj);
    }
    else {
        xs.set(i, obj);
    }
}