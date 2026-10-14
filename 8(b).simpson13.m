f = @(x)  (exp(x))
a = input('lower limit : ');
b = input('upper limit : ');
exact_ans = quad(f,a,b);
exact_ans
h = (b-a)/2;
c = a+h;
I = ((b-a)/6)*(f(a)+4*f(c)+f(b));
I
error = (I - exact_ans)/I*100;
error