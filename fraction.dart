import 'maths.dart';


void main() {
	String a = "2/3";
	String b = "5/4";

	print(addf(a, b));
}

String addf(var a, var b) {
	List<String> fa = [];
	List<String> fb = [];
	fa = a.split("/");
	fb = b.split("/");
	int ua = int.parse(fa[0]);
	int la = int.parse(fa[1]);
	int ub = int.parse(fb[0]);
	int lb = int.parse(fb[1]);
	int cl;
	int ca;
	if (lb != la) { 
		int cl = kpk(la,lb);	
		// print(cl);
		// int nua = ua * (cl ~/ ub);
		// int nub = ub * (cl ~/ ua);
		int ca = (ua * (cl ~/ ub)) + (ub * (cl ~/ ua));
		int nca = ca ~/ fpb(ca,cl);
		int ncl = cl ~/ fpb(ca,cl);
		return "$nca/$ncl";	
	} else {
		ca = ua + ub;
		cl = la + lb;
		int nca = ca ~/ fpb(ca,cl);
		int ncl = cl ~/ fpb(ca,cl);
		return "$nca/$ncl";
	}
	
}