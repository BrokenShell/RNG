# Random Number Generator & Engine for Python3

### This project has been rolled into [Fortuna](https://pypi.org/project/Fortuna/) and is no longer supported here.

---

### Development History
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
