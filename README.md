# Random Number Generator & Engine for Python3
- Compiled Python3 API for the C++ Random Library.
- Designed for python developers familiar with C++ random library.
- Warning: RNG is not suitable for cryptography or secure hashing.


### Quick Install `$ pip install RNG`


### Installation may require the following:
- Python 3.6 or later with dev tools (setuptools, pip, etc.)
- Cython: Bridge from C/C++ to Python.
- Modern C++17 Compiler and Standard Library.


### Sister Projects:
- Fortuna: Collection of tools to make custom random value generators. https://pypi.org/project/Fortuna/
- Pyewacket: Drop-in replacement for the Python3 random module. https://pypi.org/project/Pyewacket/
- MonkeyScope: Framework for testing non-deterministic generators. https://pypi.org/project/MonkeyScope/


---

## RNG Specifications

#### Random Boolean
- `RNG.bernoulli_variate(ratio_of_truth: float) -> bool`
    - Produces a Bernoulli distribution of boolean values.
    - @param ratio_of_truth :: the probability of True. Expected input range: `[0.0, 1.0]`, clamped.
    - @return :: True or False


#### Random Integer
- `RNG.uniform_int_variate(left_limit: int, right_limit: int) -> int`
    - Flat uniform distribution.
    - @param left_limit :: input A.
    - @param right_limit :: input B. 
    - @return :: random integer in the inclusive range `[A, B]` or `[B, A]` if B < A
- `RNG.binomial_variate(number_of_trials: int, probability: float) -> int`
    - Based on the idea of flipping a coin and counting how many heads come up after some number of flips.
    - @param number_of_trials :: how many times to flip a coin.
    - @param probability :: how likely heads will be flipped. 0.5 is a fair coin. 1.0 is a double headed coin.
    - @return :: count of how many heads came up.
- `RNG.negative_binomial_variate(trial_successes: int, probability: float) -> int`
    - Based on the idea of flipping a coin as long as it takes to succeed.
    - @param trial_successes :: the required number of heads flipped to succeed.
    - @param probability :: how likely heads will be flipped. 0.50 is a fair coin.
    - @return :: the count of how many tails came up before the required number of heads.
- `RNG.geometric_variate(probability: float) -> int`
    - Same as random_negative_binomial(1, probability). 
- `RNG.poisson_variate(mean: float) -> int`
    - @param mean :: sets the average output of the function.
    - @return :: random integer, poisson distribution centered on the mean.


#### Random Floating Point
- `RNG.generate_canonical() -> float`
    - Evenly distributes floats of maximum precision.
    - @return :: random float in range (0.0, 1.0)
- `RNG.uniform_real_variate(left_limit: float, right_limit: float) -> float`
    - Flat uniform distribution of floats.
    - @return :: random Float between left_limit and right_limit.
- `RNG.normal_variate(mean: float, std_dev: float) -> float`
    - @param mean :: sets the average output of the function.
    - @param std_dev :: standard deviation. Specifies spread of data from the mean.
- `RNG.lognormal_variate(log_mean: float, log_deviation: float) -> float`
    - @param log_mean :: sets the log of the mean of the function.
    - @param log_deviation :: log of the standard deviation. Specifies spread of data from the mean.
- `RNG.exponential_variate(lambda_rate: float) -> float`
    - Produces random non-negative floating-point values, distributed according to probability density function.
    - @param lambda_rate :: λ constant rate of a random event per unit of time/distance.
    - @return :: The time/distance until the next random event. For example, this distribution describes the time between the clicks of a Geiger counter or the distance between point mutations in a DNA strand.
- `RNG.gamma_variate(shape: float, scale: float) -> float`
    - Generalization of the exponential distribution.
    - Produces random positive floating-point values, distributed according to probability density function.    
    - @param shape :: α the number of independent exponentially distributed random variables.
    - @param scale :: β the scale factor or the mean of each of the distributed random variables.
    - @return :: the sum of α independent exponentially distributed random variables, each of which has a mean of β.
- `RNG.weibull_variate(shape: float, scale: float) -> float`
    - Generalization of the exponential distribution.
    - Similar to the gamma distribution but uses a closed form distribution function.
    - Popular in reliability and survival analysis.
- `RNG.extreme_value_variate(location: float, scale: float) -> float`
    - Based on Extreme Value Theory. 
    - Used for statistical models of the magnitude of earthquakes and volcanoes.
- `RNG.chi_squared_variate(degrees_of_freedom: float) -> float`
    - Used with the Chi Squared Test and Null Hypotheses to test if sample data fits an expected distribution.
- `RNG.cauchy_variate(location: float, scale: float) -> float`
    - @param location :: It specifies the location of the peak. The default value is 0.0.
    - @param scale :: It represents the half-width at half-maximum. The default value is 1.0.
    - @return :: Continuous Distribution.
- `RNG.fisher_f_variate(degrees_of_freedom_1: float, degrees_of_freedom_2: float) -> float`
    - F distributions often arise when comparing ratios of variances.
- `RNG.student_t_variate(degrees_of_freedom: float) -> float`
    - T distribution. Same as a normal distribution except it uses the sample standard deviation rather than the population standard deviation.
    - As degrees_of_freedom goes to infinity it converges with the normal distribution.
- `RNG.beta_variate(alpha: float, beta: float) -> float`
- `RNG.pareto_variate(alpha: float) -> float`
- `RNG.vonmises_variate(mu: float, kappa: float) -> float`
- `RNG.triangular_variate(low: float, high: float, mode: float = None)`


## Development Log
##### RNG 1.8.0
- Installer update
- Storm 3.3.4 update
- Adds four new functions:
    - beta_variate
    - pareto_variate
    - vonmises_variate
    - triangular_variate

##### RNG 1.7.3
- Documentation Update

##### RNG 1.7.2
- Adds four new functions:
    - beta_variate
    - pareto_variate
    - vonmises_variate
    - triangular_variate

##### RNG 1.7.1
- Fixes Major Bug in 1.7.0

##### RNG 1.7.0
- Storm 3.3.3 update

##### RNG 1.6.7
- Installer Update to address installation on Linux.

##### RNG 1.6.6
- Documentation Update

##### RNG 1.6.5
- Fixed Typos

##### RNG 1.6.4
- Installer update.

##### RNG 1.6.3
- More minor typos fixed.

##### RNG 1.6.2
- Minor typos fixed.

##### RNG 1.6.1
- Storm 3.2.2 Update.

##### RNG 1.6.0
- RNG is now compatible with python notebooks.

##### RNG 1.5.5
- Storm Update

##### RNG 1.5.4
- Storm 3.2 Update

##### RNG 1.5.3
- Fixed Typos

##### RNG 1.5.2
- Compiler Config Update

##### RNG 1.5.1
- A number of testing routines have been extracted into a new module: MonkeyScope.
    - distribution
    - timer
    - distribution_timer

##### RNG 1.5.0, internal
- Further API Refinements, new naming convention for variate generators: `<algorithm name>_variate`

##### RNG 1.4.2
- Install script update
- Test tweaks for noise reduction in timing tests.

##### RNG 1.4.1
- Test Patch for new API
- Documentation Updates

##### RNG 1.4.0
- API Refactoring

##### RNG 1.3.4
- Storm Update 3.1.1

##### RNG 1.3.3
- Installer script update

##### RNG 1.3.2
- Minor Bug Fix

##### RNG 1.3.1
- Test Update

##### RNG 1.3.1
- Fixed Typos

##### RNG 1.3.0
- Storm Update

##### RNG 1.2.5
- Low level clean up

##### RNG 1.2.4
- Minor Typos Fixed

##### RNG 1.2.3
- Documentation Update
- Test Update
- Bug Fixes

##### RNG 1.0.0 - 1.2.2, internal
- API Changes:
    - randint changed to random_int
    - randbelow changed to random_below
    - random changed to generate_canonical
    - uniform changed to random_float

##### RNG 0.2.3
- Bug Fixes

##### RNG 0.2.2
- discrete() removed.

##### RNG 0.2.1
- minor typos
- discrete() depreciated.

##### RNG 0.2.0
- Major Rebuild.

##### RNG 0.1.22
- The RNG Storm Engine is now the default standard.
- Experimental Vortex Engine added for testing.

##### RNG 0.1.21 beta
- Small update to the testing suite.

##### RNG 0.1.20 beta
- Changed default inputs for random_int and random_below to sane values.
    - random_int(left_limit=1, right_limit=20) down from `-2**63, 2**63 - 1`
    - random_below(upper_bound=10) down from `2**63 - 1`

##### RNG 0.1.19 beta
- Broke some fixed typos, for a change of pace.

##### RNG 0.1.18 beta
- Fixed some typos.

##### RNG 0.1.17 beta
- Major Refactoring.
- New primary engine: Hurricane.
- Experimental engine Typhoon added: random_below() only.

##### RNG 0.1.16 beta
- Internal Engine Performance Tuning. 

##### RNG 0.1.15 beta
- Engine Testing.

##### RNG 0.1.14 beta
- Fixed a few typos.

##### RNG 0.1.13 beta
- Fixed a few typos.

##### RNG 0.1.12 beta
- Major Test Suite Upgrade.
- Major Bug Fixes.
    - Removed several 'foot-guns' in prep for fuzz testing in future releases.

##### RNG 0.1.11 beta
- Fixed small bug in the install script.

##### RNG 0.1.10 beta
- Fixed some typos.

##### RNG 0.1.9 beta
- Fixed some typos.

##### RNG 0.1.8 beta
- Fixed some typos.
- More documentation added.

##### RNG 0.1.7 beta
- The `random_floating_point` function renamed to `random_float`.
- The function `c_rand()` has been removed as well as all the cruft it required.
- Major Documentation Upgrade.
- Fixed an issue where keyword arguments would fail to propagate. Both, positional args and kwargs now work as intended.
- Added this Dev Log.

##### RNG 0.0.6 alpha
- Minor ABI changes.

##### RNG 0.0.5 alpha
- Tests redesigned slightly for Float functions.

##### RNG 0.0.4 alpha
- Random Float Functions Implemented.

##### RNG 0.0.3 alpha
- Random Integer Functions Implemented.

##### RNG 0.0.2 alpha
- Random Bool Function Implemented.

##### RNG 0.0.1 pre-alpha
- Planning & Design.


## MonkeyScope: Distribution and Performance Test Suite
```
MonkeyScope: RNG Tests
=========================================================================

Boolean Variate Distributions

Output Analysis: bernoulli_variate(0.0)
Typical Timing: 36 ± 5 ns
Statistics of 1000 samples:
 Minimum: False
 Median: False
 Maximum: False
 Mean: 0.0
 Std Deviation: 0.0
Distribution of 10000 samples:
 False: 100.0%

Output Analysis: bernoulli_variate(0.3333333333333333)
Typical Timing: 41 ± 7 ns
Statistics of 1000 samples:
 Minimum: False
 Median: False
 Maximum: True
 Mean: 0.314
 Std Deviation: 0.46411636471902173
Distribution of 10000 samples:
 False: 66.93%
 True: 33.07%

Output Analysis: bernoulli_variate(0.5)
Typical Timing: 40 ± 5 ns
Statistics of 1000 samples:
 Minimum: False
 Median: False
 Maximum: True
 Mean: 0.494
 Std Deviation: 0.4999639987039066
Distribution of 10000 samples:
 False: 50.59%
 True: 49.41%

Output Analysis: bernoulli_variate(0.6666666666666666)
Typical Timing: 40 ± 5 ns
Statistics of 1000 samples:
 Minimum: False
 Median: True
 Maximum: True
 Mean: 0.684
 Std Deviation: 0.46491289506745237
Distribution of 10000 samples:
 False: 33.22%
 True: 66.78%

Output Analysis: bernoulli_variate(1.0)
Typical Timing: 32 ± 1 ns
Statistics of 1000 samples:
 Minimum: True
 Median: True
 Maximum: True
 Mean: 1.0
 Std Deviation: 0.0
Distribution of 10000 samples:
 True: 100.0%


Integer Variate Distributions

Base Case
Output Analysis: Random.randint(1, 6)
Typical Timing: 1088 ± 61 ns
Statistics of 1000 samples:
 Minimum: 1
 Median: 4
 Maximum: 6
 Mean: 3.532
 Std Deviation: 1.6914419883637746
Distribution of 10000 samples:
 1: 16.79%
 2: 16.93%
 3: 16.16%
 4: 16.82%
 5: 16.18%
 6: 17.12%

Output Analysis: uniform_int_variate(1, 6)
Typical Timing: 59 ± 8 ns
Statistics of 1000 samples:
 Minimum: 1
 Median: 3
 Maximum: 6
 Mean: 3.426
 Std Deviation: 1.7408400271133475
Distribution of 10000 samples:
 1: 17.01%
 2: 16.39%
 3: 16.66%
 4: 16.5%
 5: 16.71%
 6: 16.73%

Output Analysis: binomial_variate(4, 0.5)
Typical Timing: 140 ± 13 ns
Statistics of 1000 samples:
 Minimum: 0
 Median: 2
 Maximum: 4
 Mean: 2.038
 Std Deviation: 0.984152427218467
Distribution of 10000 samples:
 0: 6.12%
 1: 25.1%
 2: 37.29%
 3: 25.0%
 4: 6.49%

Output Analysis: negative_binomial_variate(5, 0.75)
Typical Timing: 118 ± 6 ns
Statistics of 1000 samples:
 Minimum: 0
 Median: 1
 Maximum: 8
 Mean: 1.685
 Std Deviation: 1.4885479501850116
Distribution of 10000 samples:
 0: 23.35%
 1: 29.92%
 2: 22.14%
 3: 12.89%
 4: 6.53%
 5: 2.98%
 6: 1.4%
 7: 0.49%
 8: 0.17%
 9: 0.06%
 10: 0.02%
 11: 0.04%
 13: 0.01%

Output Analysis: geometric_variate(0.75)
Typical Timing: 47 ± 4 ns
Statistics of 1000 samples:
 Minimum: 0
 Median: 0
 Maximum: 5
 Mean: 0.316
 Std Deviation: 0.6404248589803491
Distribution of 10000 samples:
 0: 75.33%
 1: 18.4%
 2: 4.72%
 3: 1.12%
 4: 0.34%
 5: 0.07%
 6: 0.01%
 7: 0.01%

Output Analysis: poisson_variate(4.5)
Typical Timing: 110 ± 6 ns
Statistics of 1000 samples:
 Minimum: 0
 Median: 4
 Maximum: 12
 Mean: 4.454
 Std Deviation: 2.1042537869753257
Distribution of 10000 samples:
 0: 1.16%
 1: 5.0%
 2: 11.72%
 3: 16.76%
 4: 18.74%
 5: 17.24%
 6: 12.49%
 7: 8.34%
 8: 4.72%
 9: 2.38%
 10: 0.83%
 11: 0.41%
 12: 0.14%
 13: 0.05%
 14: 0.02%


Floating Point Variate Distributions

Base Case
Output Analysis: Random.random()
Typical Timing: 32 ± 1 ns
Statistics of 1000 samples:
 Minimum: 0.00020470717953002815
 Median: (0.4902766190643588, 0.49287975190577293)
 Maximum: 0.9998379746872317
 Mean: 0.4932275568514134
 Std Deviation: 0.2943772077006881
Post-processor distribution of 10000 samples using round method:
 0: 50.0%
 1: 50.0%

Output Analysis: generate_canonical()
Typical Timing: 38 ± 4 ns
Statistics of 1000 samples:
 Minimum: 0.0018313969488656262
 Median: (0.4999019745098515, 0.5000103956471701)
 Maximum: 0.9979157465022215
 Mean: 0.4983743559000373
 Std Deviation: 0.2857287394134513
Post-processor distribution of 10000 samples using round method:
 0: 50.0%
 1: 50.0%

Base Case
Output Analysis: Random.uniform(0.0, 10.0)
Typical Timing: 229 ± 16 ns
Statistics of 1000 samples:
 Minimum: 0.0011475989233244999
 Median: (4.686759881204559, 4.698175014514612)
 Maximum: 9.994578954522886
 Mean: 4.90558557056895
 Std Deviation: 2.8901372998841577
Post-processor distribution of 10000 samples using floor method:
 0: 9.58%
 1: 10.5%
 2: 10.06%
 3: 10.09%
 4: 10.19%
 5: 9.98%
 6: 10.21%
 7: 9.76%
 8: 10.05%
 9: 9.58%

Output Analysis: uniform_real_variate(0.0, 10.0)
Typical Timing: 41 ± 7 ns
Statistics of 1000 samples:
 Minimum: 0.003871772166954936
 Median: (4.975709613518741, 4.99955707001919)
 Maximum: 9.99847163973721
 Mean: 5.041222981691081
 Std Deviation: 2.8720806186652457
Post-processor distribution of 10000 samples using floor method:
 0: 10.33%
 1: 9.62%
 2: 10.08%
 3: 10.11%
 4: 9.57%
 5: 10.12%
 6: 9.88%
 7: 9.97%
 8: 10.53%
 9: 9.79%

Base Case
Output Analysis: Random.expovariate(1.0)
Typical Timing: 336 ± 21 ns
Statistics of 1000 samples:
 Minimum: 0.0008104371505790905
 Median: (0.6999357838616548, 0.7018251058756864)
 Maximum: 7.266089757629259
 Mean: 1.0321635246736387
 Std Deviation: 1.084028320793121
Post-processor distribution of 10000 samples using floor method:
 0: 63.7%
 1: 22.72%
 2: 8.33%
 3: 3.3%
 4: 1.26%
 5: 0.4%
 6: 0.22%
 7: 0.04%
 8: 0.01%
 9: 0.01%
 11: 0.01%

Output Analysis: exponential_variate(1.0)
Typical Timing: 58 ± 8 ns
Statistics of 1000 samples:
 Minimum: 0.00018170037869458518
 Median: (0.7377113850720796, 0.7382275278647656)
 Maximum: 7.084870250885541
 Mean: 1.0149957923408772
 Std Deviation: 0.9661594059665878
Post-processor distribution of 10000 samples using floor method:
 0: 63.61%
 1: 23.32%
 2: 8.32%
 3: 3.09%
 4: 1.22%
 5: 0.26%
 6: 0.07%
 7: 0.09%
 8: 0.01%
 10: 0.01%

Base Case
Output Analysis: Random.gammavariate(1.0, 1.0)
Typical Timing: 487 ± 38 ns
Statistics of 1000 samples:
 Minimum: 0.0010269090045949092
 Median: (0.6758922146292059, 0.6764364701429871)
 Maximum: 6.62473131254665
 Mean: 0.9526441065384418
 Std Deviation: 0.9235697791084873
Post-processor distribution of 10000 samples using floor method:
 0: 62.38%
 1: 23.78%
 2: 8.78%
 3: 3.13%
 4: 1.15%
 5: 0.51%
 6: 0.15%
 7: 0.08%
 8: 0.03%
 9: 0.01%

Output Analysis: gamma_variate(1.0, 1.0)
Typical Timing: 59 ± 6 ns
Statistics of 1000 samples:
 Minimum: 7.943300227810338e-05
 Median: (0.7410362381108585, 0.7486551841969276)
 Maximum: 9.45441577468242
 Mean: 1.0319939318688074
 Std Deviation: 1.0133677265428946
Post-processor distribution of 10000 samples using floor method:
 0: 63.46%
 1: 23.11%
 2: 8.67%
 3: 3.01%
 4: 1.18%
 5: 0.37%
 6: 0.08%
 7: 0.07%
 8: 0.03%
 9: 0.02%

Base Case
Output Analysis: Random.weibullvariate(1.0, 1.0)
Typical Timing: 429 ± 28 ns
Statistics of 1000 samples:
 Minimum: 0.00014457030695612128
 Median: (0.6976139576861516, 0.6988385606862981)
 Maximum: 7.441929633011179
 Mean: 1.0360647371223919
 Std Deviation: 1.0423724124307105
Post-processor distribution of 10000 samples using floor method:
 0: 62.26%
 1: 23.95%
 2: 8.67%
 3: 3.29%
 4: 1.1%
 5: 0.43%
 6: 0.17%
 7: 0.08%
 8: 0.03%
 9: 0.02%

Output Analysis: weibull_variate(1.0, 1.0)
Typical Timing: 97 ± 11 ns
Statistics of 1000 samples:
 Minimum: 0.0001784696086844487
 Median: (0.6941698928066924, 0.6948215528368951)
 Maximum: 8.369567364716502
 Mean: 0.9966718438000562
 Std Deviation: 0.9674836941611771
Post-processor distribution of 10000 samples using floor method:
 0: 63.68%
 1: 23.0%
 2: 8.41%
 3: 3.08%
 4: 1.33%
 5: 0.28%
 6: 0.16%
 7: 0.03%
 8: 0.03%

Output Analysis: extreme_value_variate(0.0, 1.0)
Typical Timing: 79 ± 9 ns
Statistics of 1000 samples:
 Minimum: -2.0871331458605598
 Median: (0.3869710970824426, 0.3904990435365016)
 Maximum: 6.870642194863319
 Mean: 0.5738754165001632
 Std Deviation: 1.2729399422463183
Post-processor distribution of 10000 samples using round method:
 -2: 1.2%
 -1: 18.28%
 0: 35.12%
 1: 26.2%
 2: 11.5%
 3: 4.59%
 4: 2.04%
 5: 0.62%
 6: 0.24%
 7: 0.11%
 8: 0.07%
 9: 0.03%

Base Case
Output Analysis: Random.gauss(5.0, 2.0)
Typical Timing: 579 ± 4 ns
Statistics of 1000 samples:
 Minimum: -1.0864435352344746
 Median: (4.896021009703201, 4.8960635966136605)
 Maximum: 11.016252215240552
 Mean: 4.965365989325721
 Std Deviation: 1.9758300884950102
Post-processor distribution of 10000 samples using round method:
 -2: 0.04%
 -1: 0.21%
 0: 0.82%
 1: 2.82%
 2: 6.33%
 3: 11.97%
 4: 17.45%
 5: 19.95%
 6: 17.63%
 7: 12.03%
 8: 6.67%
 9: 2.89%
 10: 0.96%
 11: 0.21%
 12: 0.02%

Output Analysis: normal_variate(5.0, 2.0)
Typical Timing: 87 ± 2 ns
Statistics of 1000 samples:
 Minimum: -2.405912295794069
 Median: (5.0738045445174995, 5.082279716366891)
 Maximum: 12.381509481018478
 Mean: 5.092836336120188
 Std Deviation: 2.014023813195181
Post-processor distribution of 10000 samples using round method:
 -2: 0.06%
 -1: 0.28%
 0: 0.79%
 1: 2.77%
 2: 6.21%
 3: 12.0%
 4: 17.38%
 5: 19.86%
 6: 17.04%
 7: 13.02%
 8: 6.47%
 9: 3.01%
 10: 0.83%
 11: 0.22%
 12: 0.05%
 13: 0.01%

Base Case
Output Analysis: Random.lognormvariate(1.6, 0.25)
Typical Timing: 871 ± 28 ns
Statistics of 1000 samples:
 Minimum: 2.1400232821020095
 Median: (4.970649274737473, 4.972897691731108)
 Maximum: 11.584234487161941
 Mean: 5.099080347282304
 Std Deviation: 1.2828682146566066
Post-processor distribution of 10000 samples using round method:
 2: 0.35%
 3: 7.51%
 4: 27.79%
 5: 30.41%
 6: 19.95%
 7: 9.09%
 8: 3.4%
 9: 0.96%
 10: 0.43%
 11: 0.07%
 12: 0.03%
 14: 0.01%

Output Analysis: lognormal_variate(1.6, 0.25)
Typical Timing: 111 ± 10 ns
Statistics of 1000 samples:
 Minimum: 2.0565509130084196
 Median: (4.951319938162054, 4.956358747365627)
 Maximum: 10.705411301927128
 Mean: 5.084514398741803
 Std Deviation: 1.2702879123571864
Post-processor distribution of 10000 samples using round method:
 2: 0.23%
 3: 7.93%
 4: 26.34%
 5: 31.23%
 6: 20.45%
 7: 9.02%
 8: 3.25%
 9: 1.12%
 10: 0.33%
 11: 0.08%
 12: 0.02%

Output Analysis: chi_squared_variate(1.0)
Typical Timing: 123 ± 14 ns
Statistics of 1000 samples:
 Minimum: 4.560050044340425e-07
 Median: (0.43843953531720004, 0.44248536881992023)
 Maximum: 12.827094790848676
 Mean: 1.0076909905738598
 Std Deviation: 1.4661644618564504
Post-processor distribution of 10000 samples using floor method:
 0: 68.66%
 1: 15.68%
 2: 7.28%
 3: 3.75%
 4: 2.04%
 5: 1.08%
 6: 0.69%
 7: 0.35%
 8: 0.2%
 9: 0.09%
 10: 0.1%
 11: 0.02%
 12: 0.03%
 13: 0.01%
 15: 0.02%

Output Analysis: cauchy_variate(0.0, 1.0)
Typical Timing: 81 ± 7 ns
Statistics of 1000 samples:
 Minimum: -80.60257833512122
 Median: (-0.07136445696912773, -0.06912576811779096)
 Maximum: 302.9285259983777
 Mean: 0.048158350818380484
 Std Deviation: 14.33030682036316
Post-processor distribution of 10000 samples using floor_mod_10 method:
 0: 25.9%
 1: 11.52%
 2: 5.6%
 3: 3.76%
 4: 3.18%
 5: 3.41%
 6: 3.9%
 7: 5.8%
 8: 10.97%
 9: 25.96%

Output Analysis: fisher_f_variate(8.0, 8.0)
Typical Timing: 201 ± 18 ns
Statistics of 1000 samples:
 Minimum: 0.06789103397534023
 Median: (0.9903987592191404, 0.990587816520427)
 Maximum: 11.194291185158521
 Mean: 1.2913804655586418
 Std Deviation: 1.0772469766917976
Post-processor distribution of 10000 samples using floor method:
 0: 50.15%
 1: 32.35%
 2: 10.29%
 3: 3.99%
 4: 1.61%
 5: 0.67%
 6: 0.31%
 7: 0.19%
 8: 0.1%
 9: 0.14%
 10: 0.05%
 11: 0.05%
 12: 0.02%
 13: 0.03%
 14: 0.01%
 15: 0.01%
 16: 0.01%
 18: 0.01%
 106: 0.01%

Output Analysis: student_t_variate(8.0)
Typical Timing: 164 ± 12 ns
Statistics of 1000 samples:
 Minimum: -5.182813039237713
 Median: (-0.040463896877030454, -0.03931607130970538)
 Maximum: 5.338481501612407
 Mean: 0.005453093050598653
 Std Deviation: 1.1905125047921103
Post-processor distribution of 10000 samples using round method:
 -7: 0.01%
 -6: 0.03%
 -5: 0.05%
 -4: 0.36%
 -3: 1.4%
 -2: 6.6%
 -1: 23.55%
 0: 36.53%
 1: 23.14%
 2: 6.39%
 3: 1.42%
 4: 0.34%
 5: 0.14%
 6: 0.02%
 7: 0.02%


=========================================================================
Total Test Time: 0.5327 seconds

```
