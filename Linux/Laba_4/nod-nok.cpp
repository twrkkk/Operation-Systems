#include <cstdint>
#include <iostream>

int nod(int a, int b) {

	while (a > 0 && b > 0)
	{
		if (a > b)
			a %= b;
		else
			b %= a;
	}

	return a == 0 ? b : a;
}

int nok(int n, int m)
{
	return ((n * m) / nod(n, m));
}

int main(void) {
	int a, b;
	std::cout<<"Enter m, n\n";
	std::cin >> a >> b;
	std::cout << nok(a, b) - nod(a,b) << '\n';
	return 0;
}
