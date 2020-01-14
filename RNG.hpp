#pragma once
#include <algorithm>
#include <limits>
#include <random>


namespace Storm {  // Version 3.2.2 Custom
    using Integer = long long;

    namespace Engine {
        using MT_Engine = std::mt19937_64;
        using DB_Engine = std::discard_block_engine<MT_Engine, 64, 42>;
        using RNG_Engine = std::shuffle_order_engine<DB_Engine, 256>;
        static RNG_Engine Hurricane { std::random_device()() };
    }

    auto canonical_variate() -> double {
        return std::generate_canonical<double, std::numeric_limits<double>::digits>(Engine::Hurricane);
    }

    auto uniform_real_variate(double a, double b) -> double {
        std::uniform_real_distribution<double> distribution { a, b };
        return distribution(Engine::Hurricane);
    }

    auto uniform_int_variate(Storm::Integer a, Storm::Integer b) -> Storm::Integer {
        std::uniform_int_distribution<Storm::Integer> distribution { std::min(a, b), std::max(b, a) };
        return distribution(Engine::Hurricane);
    }

    auto bernoulli_variate(double truth_factor) -> bool {
        std::bernoulli_distribution distribution { std::clamp(truth_factor, 0.0, 1.0) };
        return distribution(Engine::Hurricane);
    }

    auto binomial_variate(Storm::Integer number_of_trials, double probability) -> Storm::Integer {
        std::binomial_distribution<Storm::Integer> distribution {
            std::max(number_of_trials, Storm::Integer(1)),
            std::clamp(probability, 0.0, 1.0)
        };
        return distribution(Engine::Hurricane);
    }

    auto negative_binomial_variate(Storm::Integer number_of_trials, double probability) -> Storm::Integer {
        std::negative_binomial_distribution<Storm::Integer> distribution {
            std::max(number_of_trials, Storm::Integer(1)),
            std::clamp(probability, 0.0, 1.0)
        };
        return distribution(Engine::Hurricane);
    }

    auto geometric_variate(double probability) -> Storm::Integer {
        std::geometric_distribution<Storm::Integer> distribution { std::clamp(probability, 0.0, 1.0) };
        return distribution(Engine::Hurricane);
    }

    auto poisson_variate(double mean) -> Storm::Integer {
        std::poisson_distribution<Storm::Integer> distribution { mean };
        return distribution(Engine::Hurricane);
    }

    auto exponential_variate(double lambda_rate) -> double {
        std::exponential_distribution<double> distribution { lambda_rate };
        return distribution(Engine::Hurricane);
    }

    auto gamma_variate(double shape, double scale) -> double {
        std::gamma_distribution<double> distribution { shape, scale };
        return distribution(Engine::Hurricane);
    }

    auto weibull_variate(double shape, double scale) -> double {
        std::weibull_distribution<double> distribution { shape, scale };
        return distribution(Engine::Hurricane);
    }

    auto normal_variate(double mean, double std_dev) -> double {
        std::normal_distribution<double> distribution { mean, std_dev };
        return distribution(Engine::Hurricane);
    }

    auto lognormal_variate(double log_mean, double log_deviation) -> double {
        std::lognormal_distribution<double> distribution { log_mean, log_deviation };
        return distribution(Engine::Hurricane);
    }

    auto extreme_value_variate(double location, double scale) -> double {
        std::extreme_value_distribution<double> distribution { location, scale };
        return distribution(Engine::Hurricane);
    }

    auto chi_squared_variate(double degrees_of_freedom) -> double {
        std::chi_squared_distribution<double> distribution {
            std::max(degrees_of_freedom, 0.0)
        };
        return distribution(Engine::Hurricane);
    }

    auto cauchy_variate(double location, double scale) -> double {
        std::cauchy_distribution<double> distribution { location, scale };
        return distribution(Engine::Hurricane);
    }

    auto fisher_f_variate(double degrees_of_freedom_1, double degrees_of_freedom_2) -> double {
        std::fisher_f_distribution<double> distribution {
            std::max(degrees_of_freedom_1, 0.0),
            std::max(degrees_of_freedom_2, 0.0)
        };
        return distribution(Engine::Hurricane);
    }

    auto student_t_variate(double degrees_of_freedom) -> double {
        std::student_t_distribution<double> distribution {
            std::max(degrees_of_freedom, 0.0)
        };
        return distribution(Engine::Hurricane);
    }

} // end Storm namespace
