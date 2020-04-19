import time as _time
import math as _math
import random as _random

from RNG import *
from MonkeyScope import *


def quick_test(n=10000):
    def floor_mod_10(x):
        return _math.floor(x) % 10

    print("\nMonkeyScope: RNG Tests")
    print('=' * 73)

    start = _time.time()

    print("\nBoolean Variate Distributions\n")
    distribution_timer(bernoulli_variate, 0.0, num_cycles=n)
    distribution_timer(bernoulli_variate, 1/3, num_cycles=n)
    distribution_timer(bernoulli_variate, 1/2, num_cycles=n)
    distribution_timer(bernoulli_variate, 2/3, num_cycles=n)
    distribution_timer(bernoulli_variate, 1.0, num_cycles=n)

    print("\nInteger Variate Distributions\n")
    print("Base Case")
    distribution_timer(_random.randint, 1, 6, num_cycles=n)
    distribution_timer(uniform_int_variate, 1, 6, num_cycles=n)
    distribution_timer(binomial_variate, 4, 0.5, num_cycles=n)
    distribution_timer(negative_binomial_variate, 5, 0.75, num_cycles=n)
    distribution_timer(geometric_variate, 0.75, num_cycles=n)
    distribution_timer(poisson_variate, 4.5, num_cycles=n)

    print("\nFloating Point Variate Distributions\n")
    print("Base Case")
    distribution_timer(_random.random, num_cycles=n, post_processor=round)
    distribution_timer(generate_canonical, num_cycles=n, post_processor=round)
    print("Base Case")
    distribution_timer(_random.uniform, 0.0, 10.0, num_cycles=n, post_processor=_math.floor)
    distribution_timer(uniform_real_variate, 0.0, 10.0, num_cycles=n, post_processor=_math.floor)
    print("Base Case")
    distribution_timer(_random.expovariate, 1.0, num_cycles=n, post_processor=_math.floor)
    distribution_timer(exponential_variate, 1.0, num_cycles=n, post_processor=_math.floor)
    print("Base Case")
    distribution_timer(_random.gammavariate, 1.0, 1.0, num_cycles=n, post_processor=_math.floor)
    distribution_timer(gamma_variate, 1.0, 1.0, num_cycles=n, post_processor=_math.floor)
    print("Base Case")
    distribution_timer(_random.weibullvariate, 1.0, 1.0, num_cycles=n, post_processor=_math.floor)
    distribution_timer(weibull_variate, 1.0, 1.0, num_cycles=n, post_processor=_math.floor)
    distribution_timer(extreme_value_variate, 0.0, 1.0, num_cycles=n, post_processor=round)
    print("Base Case")
    distribution_timer(_random.gauss, 5.0, 2.0, num_cycles=n, post_processor=round)
    distribution_timer(normal_variate, 5.0, 2.0, num_cycles=n, post_processor=round)
    print("Base Case")
    distribution_timer(_random.lognormvariate, 1.6, 0.25, num_cycles=n, post_processor=round)
    distribution_timer(lognormal_variate, 1.6, 0.25, num_cycles=n, post_processor=round)
    distribution_timer(chi_squared_variate, 1.0, num_cycles=n, post_processor=_math.floor)
    distribution_timer(cauchy_variate, 0.0, 1.0, num_cycles=n, post_processor=floor_mod_10)
    distribution_timer(fisher_f_variate, 8.0, 8.0, num_cycles=n, post_processor=_math.floor)
    distribution_timer(student_t_variate, 8.0, num_cycles=n, post_processor=round)

    print("Base Case")
    distribution_timer(_random.betavariate, 3.0, 3.0, post_processor=round, num_cycles=n)
    distribution_timer(beta_variate, 3.0, 3.0, post_processor=round, num_cycles=n)
    print("Base Case")
    distribution_timer(_random.paretovariate, 4.0, post_processor=_math.floor, num_cycles=n)
    distribution_timer(pareto_variate, 4.0, post_processor=_math.floor, num_cycles=n)
    print("Base Case")
    distribution_timer(_random.vonmisesvariate, 0, 0, post_processor=_math.floor, num_cycles=n)
    distribution_timer(vonmises_variate, 0, 0, post_processor=_math.floor, num_cycles=n)
    print("Base Case")
    distribution_timer(_random.triangular, 0.0, 10.0, 0.0, post_processor=_math.floor, num_cycles=n)
    distribution_timer(triangular_variate, 0.0, 10.0, 0.0, post_processor=_math.floor, num_cycles=n)

    end = _time.time()
    duration = round(end - start, 4)
    print()
    print('=' * 73)
    print(f"Total Test Time: {duration} seconds")


if __name__ == "__main__":
    quick_test()
