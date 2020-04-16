import 'dart:math';


void main() {  
  print(fpb(35,20));
  print(kpk(35,20));
}


List getFactors(a) {
  List<int> factors = [];
  for (int i = 1; i <= a; i++) {
    if (a % i == 0) {
      factors.add(i);
    }
  }
  return factors;
}

int fpb(int x, int y) {
  List<int> a = getFactors(x);
  List<int> b = getFactors(y);
  List<int> sama = []; 
  for (int i in a){
    for (int j in b){
      if (j == i){
        sama.add(j);
      }
    }
  }
  int hasil = sama.reduce(max);
  return hasil;  
}


int kpk(int a, int b) => (a * b) ~/ fpb(a,b);
