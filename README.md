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
##### RNG 1.9.0
- Storm Multithreading Update

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
Typical Timing: 45 ± 6 ns
Statistics of 1000 samples:
 Minimum: False
 Median: False
 Maximum: False
 Mean: 0
 Std Deviation: 0.0
Distribution of 10000 samples:
 False: 100.0%

Output Analysis: bernoulli_variate(0.3333333333333333)
Typical Timing: 50 ± 3 ns
Statistics of 1000 samples:
 Minimum: False
 Median: False
 Maximum: True
 Mean: 0.351
 Std Deviation: 0.4775217555536366
Distribution of 10000 samples:
 False: 66.83%
 True: 33.17%

Output Analysis: bernoulli_variate(0.5)
Typical Timing: 48 ± 1 ns
Statistics of 1000 samples:
 Minimum: False
 Median: True
 Maximum: True
 Mean: 0.517
 Std Deviation: 0.49996095943679536
Distribution of 10000 samples:
 False: 50.19%
 True: 49.81%

Output Analysis: bernoulli_variate(0.6666666666666666)
Typical Timing: 53 ± 6 ns
Statistics of 1000 samples:
 Minimum: False
 Median: True
 Maximum: True
 Mean: 0.68
 Std Deviation: 0.46670956473787617
Distribution of 10000 samples:
 False: 33.29%
 True: 66.71%

Output Analysis: bernoulli_variate(1.0)
Typical Timing: 40 ± 1 ns
Statistics of 1000 samples:
 Minimum: True
 Median: True
 Maximum: True
 Mean: 1
 Std Deviation: 0.0
Distribution of 10000 samples:
 True: 100.0%


Integer Variate Distributions

Base Case
Output Analysis: Random.randint(1, 6)
Typical Timing: 701 ± 57 ns
Statistics of 1000 samples:
 Minimum: 1
 Median: 3
 Maximum: 6
 Mean: 3.495
 Std Deviation: 1.6759426552790473
Distribution of 10000 samples:
 1: 16.99%
 2: 16.18%
 3: 16.57%
 4: 17.17%
 5: 16.06%
 6: 17.03%

Output Analysis: uniform_int_variate(1, 6)
Typical Timing: 69 ± 18 ns
Statistics of 1000 samples:
 Minimum: 1
 Median: 4
 Maximum: 6
 Mean: 3.513
 Std Deviation: 1.6990343485985555
Distribution of 10000 samples:
 1: 16.64%
 2: 16.85%
 3: 16.36%
 4: 16.84%
 5: 16.72%
 6: 16.59%

Output Analysis: binomial_variate(4, 0.5)
Typical Timing: 116 ± 6 ns
Statistics of 1000 samples:
 Minimum: 0
 Median: 2
 Maximum: 4
 Mean: 2.006
 Std Deviation: 1.0212771450527065
Distribution of 10000 samples:
 0: 6.26%
 1: 24.47%
 2: 37.96%
 3: 24.91%
 4: 6.4%

Output Analysis: negative_binomial_variate(5, 0.75)
Typical Timing: 99 ± 2 ns
Statistics of 1000 samples:
 Minimum: 0
 Median: 1
 Maximum: 9
 Mean: 1.669
 Std Deviation: 1.4316034676154177
Distribution of 10000 samples:
 0: 23.39%
 1: 30.02%
 2: 22.28%
 3: 12.65%
 4: 6.6%
 5: 3.15%
 6: 1.17%
 7: 0.53%
 8: 0.15%
 9: 0.06%

Output Analysis: geometric_variate(0.75)
Typical Timing: 54 ± 11 ns
Statistics of 1000 samples:
 Minimum: 0
 Median: 0
 Maximum: 5
 Mean: 0.329
 Std Deviation: 0.6520614880394212
Distribution of 10000 samples:
 0: 75.71%
 1: 18.24%
 2: 4.71%
 3: 0.99%
 4: 0.27%
 5: 0.05%
 6: 0.03%

Output Analysis: poisson_variate(4.5)
Typical Timing: 105 ± 11 ns
Statistics of 1000 samples:
 Minimum: 0
 Median: 4
 Maximum: 13
 Mean: 4.471
 Std Deviation: 2.2293786419379567
Distribution of 10000 samples:
 0: 1.13%
 1: 5.34%
 2: 11.08%
 3: 16.88%
 4: 19.05%
 5: 17.4%
 6: 12.75%
 7: 8.08%
 8: 4.61%
 9: 2.11%
 10: 0.92%
 11: 0.43%
 12: 0.14%
 13: 0.07%
 17: 0.01%


Floating Point Variate Distributions

Base Case
Output Analysis: Random.random()
Typical Timing: 33 ± 2 ns
Statistics of 1000 samples:
 Minimum: 0.0009469086960408601
 Median: (0.4860176675184945, 0.4862191254411504)
 Maximum: 0.9997461211625814
 Mean: 0.49159326560197075
 Std Deviation: 0.2850094459134645
Post-processor distribution of 10000 samples using round method:
 0: 49.97%
 1: 50.03%

Output Analysis: generate_canonical()
Typical Timing: 49 ± 14 ns
Statistics of 1000 samples:
 Minimum: 0.0012250580801643602
 Median: (0.49940149724119814, 0.5012480240473031)
 Maximum: 0.9995110419296278
 Mean: 0.4990862906881559
 Std Deviation: 0.2894336096594379
Post-processor distribution of 10000 samples using round method:
 0: 49.79%
 1: 50.21%

Base Case
Output Analysis: Random.uniform(0.0, 10.0)
Typical Timing: 202 ± 30 ns
Statistics of 1000 samples:
 Minimum: 0.0009063003136644543
 Median: (5.104390717900893, 5.112896064974317)
 Maximum: 9.969346101796932
 Mean: 5.087947391421488
 Std Deviation: 2.858752303711666
Post-processor distribution of 10000 samples using floor method:
 0: 9.94%
 1: 10.18%
 2: 10.15%
 3: 9.53%
 4: 10.12%
 5: 9.67%
 6: 9.89%
 7: 10.09%
 8: 10.03%
 9: 10.4%

Output Analysis: uniform_real_variate(0.0, 10.0)
Typical Timing: 36 ± 1 ns
Statistics of 1000 samples:
 Minimum: 0.009369504108719947
 Median: (5.231715984229183, 5.238221356483351)
 Maximum: 9.993081008562841
 Mean: 5.121535589837096
 Std Deviation: 2.928017584780168
Post-processor distribution of 10000 samples using floor method:
 0: 10.24%
 1: 9.96%
 2: 9.85%
 3: 10.08%
 4: 9.91%
 5: 10.14%
 6: 9.86%
 7: 10.01%
 8: 9.76%
 9: 10.19%

Base Case
Output Analysis: Random.expovariate(1.0)
Typical Timing: 308 ± 54 ns
Statistics of 1000 samples:
 Minimum: 0.00022283579144723265
 Median: (0.6946018847083439, 0.7033952301957903)
 Maximum: 9.377129964767672
 Mean: 0.9888233042561453
 Std Deviation: 0.9909547143969067
Post-processor distribution of 10000 samples using floor method:
 0: 63.41%
 1: 23.05%
 2: 8.67%
 3: 3.16%
 4: 1.05%
 5: 0.43%
 6: 0.11%
 7: 0.05%
 8: 0.03%
 9: 0.03%
 10: 0.01%

Output Analysis: exponential_variate(1.0)
Typical Timing: 70 ± 19 ns
Statistics of 1000 samples:
 Minimum: 0.00036922135460148444
 Median: (0.6902301261789581, 0.690992414050738)
 Maximum: 7.784693626624327
 Mean: 1.0307886115084801
 Std Deviation: 1.0504520936815291
Post-processor distribution of 10000 samples using floor method:
 0: 62.7%
 1: 23.08%
 2: 9.02%
 3: 3.26%
 4: 1.15%
 5: 0.47%
 6: 0.2%
 7: 0.1%
 8: 0.02%

Base Case
Output Analysis: Random.gammavariate(1.0, 1.0)
Typical Timing: 381 ± 14 ns
Statistics of 1000 samples:
 Minimum: 0.0018991954906568038
 Median: (0.7245665689711348, 0.724807613270215)
 Maximum: 5.976644443321298
 Mean: 0.9933357953854692
 Std Deviation: 0.9497445555967294
Post-processor distribution of 10000 samples using floor method:
 0: 63.7%
 1: 23.23%
 2: 8.39%
 3: 2.97%
 4: 1.23%
 5: 0.35%
 6: 0.07%
 7: 0.04%
 9: 0.01%
 10: 0.01%

Output Analysis: gamma_variate(1.0, 1.0)
Typical Timing: 63 ± 4 ns
Statistics of 1000 samples:
 Minimum: 0.0018232827565116735
 Median: (0.7491531342325481, 0.7492698602338012)
 Maximum: 6.786310986657975
 Mean: 1.0545029123837208
 Std Deviation: 1.0409898067584733
Post-processor distribution of 10000 samples using floor method:
 0: 62.69%
 1: 23.84%
 2: 8.5%
 3: 3.15%
 4: 1.2%
 5: 0.41%
 6: 0.13%
 7: 0.02%
 8: 0.04%
 9: 0.01%
 10: 0.01%

Base Case
Output Analysis: Random.weibullvariate(1.0, 1.0)
Typical Timing: 375 ± 55 ns
Statistics of 1000 samples:
 Minimum: 7.520225396221629e-05
 Median: (0.674584553290744, 0.6751023933237315)
 Maximum: 8.547669414265268
 Mean: 0.9697432909503267
 Std Deviation: 0.9878268042292196
Post-processor distribution of 10000 samples using floor method:
 0: 63.33%
 1: 23.45%
 2: 8.16%
 3: 3.17%
 4: 1.08%
 5: 0.46%
 6: 0.22%
 7: 0.07%
 8: 0.04%
 9: 0.01%
 10: 0.01%

Output Analysis: weibull_variate(1.0, 1.0)
Typical Timing: 97 ± 19 ns
Statistics of 1000 samples:
 Minimum: 0.00012212664058456425
 Median: (0.7508676497298515, 0.7511662479880115)
 Maximum: 10.168551250795032
 Mean: 1.0484087501169248
 Std Deviation: 1.0528035703606708
Post-processor distribution of 10000 samples using floor method:
 0: 63.47%
 1: 23.11%
 2: 8.26%
 3: 3.39%
 4: 1.08%
 5: 0.44%
 6: 0.14%
 7: 0.04%
 8: 0.05%
 9: 0.01%
 10: 0.01%

Output Analysis: extreme_value_variate(0.0, 1.0)
Typical Timing: 64 ± 1 ns
Statistics of 1000 samples:
 Minimum: -2.1523974238627286
 Median: (0.36819057686823914, 0.3716427752373583)
 Maximum: 6.981328878514542
 Mean: 0.586266384911579
 Std Deviation: 1.2984970649397378
Post-processor distribution of 10000 samples using round method:
 -3: 0.01%
 -2: 1.05%
 -1: 18.18%
 0: 34.93%
 1: 26.04%
 2: 12.43%
 3: 4.6%
 4: 1.76%
 5: 0.52%
 6: 0.35%
 7: 0.11%
 8: 0.01%
 9: 0.01%

Base Case
Output Analysis: Random.gauss(5.0, 2.0)
Typical Timing: 510 ± 38 ns
Statistics of 1000 samples:
 Minimum: -0.7477171265545861
 Median: (4.888618373902524, 4.891850499176082)
 Maximum: 10.91278503342475
 Mean: 4.897247795072598
 Std Deviation: 1.9904131599973038
Post-processor distribution of 10000 samples using round method:
 -4: 0.01%
 -3: 0.02%
 -2: 0.07%
 -1: 0.24%
 0: 1.05%
 1: 2.82%
 2: 7.11%
 3: 12.22%
 4: 17.0%
 5: 19.78%
 6: 17.55%
 7: 12.19%
 8: 6.31%
 9: 2.57%
 10: 0.85%
 11: 0.15%
 12: 0.03%
 13: 0.02%
 14: 0.01%

Output Analysis: normal_variate(5.0, 2.0)
Typical Timing: 99 ± 21 ns
Statistics of 1000 samples:
 Minimum: -1.7354688571967598
 Median: (4.975708463134088, 4.979575294576254)
 Maximum: 10.85380115408761
 Mean: 4.900369847149426
 Std Deviation: 1.977127518275325
Post-processor distribution of 10000 samples using round method:
 -3: 0.01%
 -2: 0.03%
 -1: 0.28%
 0: 1.1%
 1: 2.7%
 2: 6.24%
 3: 12.47%
 4: 17.12%
 5: 19.73%
 6: 17.33%
 7: 12.33%
 8: 6.52%
 9: 2.87%
 10: 0.9%
 11: 0.31%
 12: 0.06%

Base Case
Output Analysis: Random.lognormvariate(1.6, 0.25)
Typical Timing: 739 ± 91 ns
Statistics of 1000 samples:
 Minimum: 1.6182109355042633
 Median: (4.954760466608597, 4.9549928980551465)
 Maximum: 10.382790739453425
 Mean: 5.072340877054277
 Std Deviation: 1.2876444585825677
Post-processor distribution of 10000 samples using round method:
 1: 0.01%
 2: 0.27%
 3: 8.32%
 4: 27.04%
 5: 30.37%
 6: 20.05%
 7: 9.17%
 8: 3.42%
 9: 1.0%
 10: 0.22%
 11: 0.07%
 12: 0.02%
 13: 0.02%
 14: 0.02%

Output Analysis: lognormal_variate(1.6, 0.25)
Typical Timing: 91 ± 2 ns
Statistics of 1000 samples:
 Minimum: 2.054519803989211
 Median: (4.961175413324585, 4.962346412418926)
 Maximum: 13.089948639610624
 Mean: 5.133865982000209
 Std Deviation: 1.3471587667449132
Post-processor distribution of 10000 samples using round method:
 2: 0.54%
 3: 7.87%
 4: 27.03%
 5: 30.88%
 6: 20.13%
 7: 8.85%
 8: 3.13%
 9: 1.08%
 10: 0.36%
 11: 0.06%
 12: 0.06%
 13: 0.01%

Output Analysis: chi_squared_variate(1.0)
Typical Timing: 99 ± 2 ns
Statistics of 1000 samples:
 Minimum: 1.0941210891363413e-05
 Median: (0.43469342598840177, 0.4379878305872364)
 Maximum: 12.686947158426655
 Mean: 1.0043828014250444
 Std Deviation: 1.4523692968032893
Post-processor distribution of 10000 samples using floor method:
 0: 68.62%
 1: 16.19%
 2: 7.22%
 3: 3.47%
 4: 1.78%
 5: 1.2%
 6: 0.54%
 7: 0.41%
 8: 0.24%
 9: 0.13%
 10: 0.1%
 11: 0.07%
 12: 0.03%

Output Analysis: cauchy_variate(0.0, 1.0)
Typical Timing: 74 ± 8 ns
Statistics of 1000 samples:
 Minimum: -412.4447039329294
 Median: (-0.00803996345876897, -0.007045265870693908)
 Maximum: 100.05630557155071
 Mean: -0.7570829535044235
 Std Deviation: 16.84763686555999
Post-processor distribution of 10000 samples using floor_mod_10 method:
 0: 26.16%
 1: 10.85%
 2: 6.06%
 3: 3.99%
 4: 2.99%
 5: 3.15%
 6: 3.68%
 7: 6.01%
 8: 10.88%
 9: 26.23%

Output Analysis: fisher_f_variate(8.0, 8.0)
Typical Timing: 171 ± 19 ns
Statistics of 1000 samples:
 Minimum: 0.07778050584372528
 Median: (1.0057729865228902, 1.008538415914723)
 Maximum: 9.360113645215508
 Mean: 1.327148184999924
 Std Deviation: 1.1367248833797432
Post-processor distribution of 10000 samples using floor method:
 0: 50.31%
 1: 32.35%
 2: 10.4%
 3: 3.42%
 4: 1.52%
 5: 0.83%
 6: 0.49%
 7: 0.21%
 8: 0.17%
 9: 0.14%
 10: 0.01%
 11: 0.04%
 12: 0.04%
 13: 0.01%
 14: 0.01%
 15: 0.01%
 16: 0.01%
 17: 0.01%
 19: 0.01%
 20: 0.01%

Output Analysis: student_t_variate(8.0)
Typical Timing: 135 ± 2 ns
Statistics of 1000 samples:
 Minimum: -4.347277120767142
 Median: (-0.09684763137542615, -0.09577555353044116)
 Maximum: 4.761006911099672
 Mean: -0.10896142938152968
 Std Deviation: 1.1174742914446785
Post-processor distribution of 10000 samples using round method:
 -6: 0.01%
 -5: 0.04%
 -4: 0.35%
 -3: 1.48%
 -2: 6.81%
 -1: 22.37%
 0: 37.7%
 1: 22.81%
 2: 6.9%
 3: 1.22%
 4: 0.2%
 5: 0.08%
 6: 0.01%
 7: 0.01%
 12: 0.01%

Base Case
Output Analysis: Random.betavariate(3.0, 3.0)
Typical Timing: 2073 ± 139 ns
Statistics of 1000 samples:
 Minimum: 0.03138760912076865
 Median: (0.5068211737017677, 0.5092176475719613)
 Maximum: 0.9546118898169257
 Mean: 0.5028550656967483
 Std Deviation: 0.18788179763987925
Post-processor distribution of 10000 samples using round method:
 0: 49.39%
 1: 50.61%

Output Analysis: beta_variate(3.0, 3.0)
Typical Timing: 194 ± 38 ns
Statistics of 1000 samples:
 Minimum: 0.032943252168093094
 Median: (0.5050489272860383, 0.5054503804757835)
 Maximum: 0.9880206999844106
 Mean: 0.49666850251973654
 Std Deviation: 0.19050360553549944
Post-processor distribution of 10000 samples using round method:
 0: 49.93%
 1: 50.07%

Base Case
Output Analysis: Random.paretovariate(4.0)
Typical Timing: 258 ± 43 ns
Statistics of 1000 samples:
 Minimum: 1.0000730550843022
 Median: (1.190790537931246, 1.1910309529817935)
 Maximum: 7.229789936432111
 Mean: 1.3429097432265165
 Std Deviation: 0.49712093056422557
Post-processor distribution of 10000 samples using floor method:
 1: 93.85%
 2: 4.9%
 3: 0.75%
 4: 0.36%
 5: 0.06%
 6: 0.03%
 7: 0.01%
 8: 0.01%
 9: 0.01%
 10: 0.01%
 11: 0.01%

Output Analysis: pareto_variate(4.0)
Typical Timing: 72 ± 1 ns
Statistics of 1000 samples:
 Minimum: 1.0000557435294104
 Median: (1.2061623131691928, 1.2063019523964296)
 Maximum: 5.614244166389306
 Mean: 1.3186057582094874
 Std Deviation: 0.3953237528416675
Post-processor distribution of 10000 samples using floor method:
 1: 93.81%
 2: 4.98%
 3: 0.84%
 4: 0.21%
 5: 0.06%
 6: 0.05%
 7: 0.02%
 8: 0.01%
 10: 0.01%
 15: 0.01%

Base Case
Output Analysis: Random.vonmisesvariate(0, 0)
Typical Timing: 213 ± 21 ns
Statistics of 1000 samples:
 Minimum: 0.003293176650527809
 Median: (3.161168648355572, 3.161293649410021)
 Maximum: 6.282873757855562
 Mean: 3.1742415713839893
 Std Deviation: 1.8234656882324494
Post-processor distribution of 10000 samples using floor method:
 0: 15.79%
 1: 16.15%
 2: 15.99%
 3: 15.68%
 4: 15.93%
 5: 15.88%
 6: 4.58%

Output Analysis: vonmises_variate(0, 0)
Typical Timing: 78 ± 16 ns
Statistics of 1000 samples:
 Minimum: 0.0019580074347335377
 Median: (3.269692944691527, 3.2778954505492233)
 Maximum: 6.27533475156213
 Mean: 3.1958649424197687
 Std Deviation: 1.817883257675407
Post-processor distribution of 10000 samples using floor method:
 0: 16.09%
 1: 15.91%
 2: 16.23%
 3: 15.53%
 4: 16.13%
 5: 15.51%
 6: 4.6%

Base Case
Output Analysis: Random.triangular(0.0, 10.0, 0.0)
Typical Timing: 432 ± 65 ns
Statistics of 1000 samples:
 Minimum: 0.00044729631290252314
 Median: (2.9227727784626545, 2.9250450899909666)
 Maximum: 9.719266426712398
 Mean: 3.382494401771918
 Std Deviation: 2.432128735482754
Post-processor distribution of 10000 samples using floor method:
 0: 19.41%
 1: 16.81%
 2: 14.99%
 3: 13.06%
 4: 11.16%
 5: 8.96%
 6: 6.53%
 7: 4.96%
 8: 3.07%
 9: 1.05%

Output Analysis: triangular_variate(0.0, 10.0, 0.0)
Typical Timing: 52 ± 9 ns
Statistics of 1000 samples:
 Minimum: 0.005402718449564858
 Median: (2.975522778312768, 2.978287303484085)
 Maximum: 9.537942606667837
 Mean: 3.3170707949104434
 Std Deviation: 2.34454588898292
Post-processor distribution of 10000 samples using floor method:
 0: 19.36%
 1: 16.84%
 2: 14.97%
 3: 12.33%
 4: 10.79%
 5: 8.89%
 6: 7.23%
 7: 5.4%
 8: 3.22%
 9: 0.97%


=========================================================================
Total Test Time: 0.8547 seconds

```
