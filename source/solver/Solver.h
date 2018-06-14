#pragma once

#include <memory>
#include <vector>

#include "ISolver.h"

struct Matrix;

using namespace std;

class Solver : public ISolver
{
public:
	Solver(const shared_ptr<Matrix> a);

	// x0 - начальное приближение, maxItt - максимальное количество иттераций
	bool Solve(vector<double> & x, const vector<double> & x0, double eps, int maxItt) override;

private:
	const shared_ptr<Matrix> a;
};
