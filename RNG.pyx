#!python3
#distutils: language = c++


__all__ = (
    "bernoulli_variate", "uniform_int_variate", "generate_canonical",
    "uniform_real_variate", "binomial_variate", "negative_binomial_variate",
    "geometric_variate", "poisson_variate", "normal_variate",
    "lognormal_variate", "exponential_variate", "gamma_variate",
    "weibull_variate", "extreme_value_variate", "chi_squared_variate",
    "cauchy_variate", "fisher_f_variate", "student_t_variate",
    "beta_variate", "pareto_variate", "vonmises_variate", "triangular_variate",
)


cdef extern from "Storm.hpp":
    int         rng_bernoulli       "Storm::bernoulli_variate"(double)
    long long   rng_uniform_int     "Storm::uniform_int_variate"(long long, long long)
    long long   rng_binomial        "Storm::binomial_variate"(long long, double)
    long long   rng_neg_binomial    "Storm::negative_binomial_variate"(long long, double)
    long long   rng_geometric       "Storm::geometric_variate"(double)
    long long   rng_poisson         "Storm::poisson_variate"(double)
    double      rng_canonical       "Storm::canonical_variate"()
    double      rng_uniform_real    "Storm::uniform_real_variate"(double, double)
    double      rng_exponential     "Storm::exponential_variate"(double)
    double      rng_gamma           "Storm::gamma_variate"(double, double)
    double      rng_weibull         "Storm::weibull_variate"(double, double)
    double      rng_normal          "Storm::normal_variate"(double, double)
    double      rng_lognormal       "Storm::lognormal_variate"(double, double)
    double      rng_extreme_value   "Storm::extreme_value_variate"(double, double)
    double      rng_chi_squared     "Storm::chi_squared_variate"(double)
    double      rng_cauchy          "Storm::cauchy_variate"(double, double)
    double      rng_fisher_f        "Storm::fisher_f_variate"(double, double)
    double      rng_student_t       "Storm::student_t_variate"(double)
    double      rng_beta            "Storm::beta_variate"(double, double)
    double      rng_pareto          "Storm::pareto_variate"(double)
    double      rng_vonmises        "Storm::vonmises_variate"(double, double)
    double      rng_triangular      "Storm::triangular_variate"(double, double, double)


def beta_variate(alpha: float, beta:float) -> float:
    return rng_beta(alpha, beta)

def pareto_variate(alpha: float) -> float:
    return rng_pareto(alpha)

def vonmises_variate(mu: float, kappa: float) -> float:
    return rng_vonmises(mu, kappa)

def triangular_variate(low: float, high: float, mode: float) -> float:
    return rng_triangular(low, high, mode)

def bernoulli_variate(ratio_of_truth: float) -> bool:
    return rng_bernoulli(ratio_of_truth) == 1

def uniform_int_variate(left_limit: int, right_limit: int) -> int:
    return rng_uniform_int(left_limit, right_limit)

def binomial_variate(number_of_trials: int, probability: float) -> int:
    return rng_binomial(number_of_trials, probability)

def negative_binomial_variate(number_of_trials: int, probability: float) -> int:
    return rng_neg_binomial(number_of_trials, probability)

def geometric_variate(probability: float) -> int:
    return rng_geometric(probability)

def poisson_variate(mean: float) -> int:
    return rng_poisson(mean)

def generate_canonical():
    return rng_canonical()

def uniform_real_variate(left_limit: float, right_limit: float) -> float:
    return rng_uniform_real(left_limit, right_limit)
    
def exponential_variate(lambda_rate: float) -> float:
    return rng_exponential(lambda_rate)

def gamma_variate(shape: float, scale: float) -> float:
    return rng_gamma(shape, scale)
    
def weibull_variate(shape: float, scale: float) -> float:
    return rng_weibull(shape, scale)
    
def normal_variate(mean: float, std_dev: float) -> float:
    return rng_normal(mean, std_dev)

def lognormal_variate(log_mean: float, log_deviation: float) -> float:
    return rng_lognormal(log_mean, log_deviation)
    
def extreme_value_variate(location: float, scale: float) -> float:
    return rng_extreme_value(location, scale)

def chi_squared_variate(degrees_of_freedom: float) -> float:
    return rng_chi_squared(degrees_of_freedom)
    
def cauchy_variate(location: float, scale: float) -> float:
    return rng_cauchy(location, scale)
    
def fisher_f_variate(degrees_of_freedom_1: float, degrees_of_freedom_2: float) -> float:
    return rng_fisher_f(degrees_of_freedom_1, degrees_of_freedom_2)
    
def student_t_variate(degrees_of_freedom: float) -> float:
    return rng_student_t(degrees_of_freedom)
