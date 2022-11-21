End-to-end test database
========================

This repository makes up the end-to-end test database for `libCellML <libcellml.org>`_.
Each CMake file defines a test suite.
Each test suite defines the tests that can be performed.

Each suite can define the following variables:

=======================  ======================================================================================
Variable name            Value
=======================  ======================================================================================
TEST_GIT_REPO            The repository that the tests come from.
TEST_COMMIT_HASH         The hash to clone the repository at (can be a branch/tag).
TEST_TARGETS             The names of the targets, for multiple targets name as a CMake list variable.
TEST_TARGETS_ARGS        The arguments to be passed to the test, individual test args are separated with a '|'
TEST_CMAKELISTS_DIR      The directory of the CMakeLists.txt file for the test.
TEST_EXPECTED_RESULTS    The expected results for the test, NOTFOUND if there are no expected results.
=======================  ======================================================================================

TEST_TARGETS, TEST_TARGETS_ARGS, TEST_CMAKELISTS_DIR, and TEST_EXPECTED_RESULTS should all have the same number of entries if defined at all.

For tests that take multiple arguments the TEST_TARGETS_ARGS entry should have individual arguments separated with '|'.
When passing multiple arguments to a single test case there cannot be any spaces between individual arguments.

When defining an expected results location as a directory it **must** end with a trailing path separator token.

Advanced usage
--------------

The testing framework now uses `numdiff <https://github.com/cmlibs-dependencies/numdiff>`_ to compare the difference between files.
It is also possible to pass *numdiff* arguments directly (indirectly) to *numdiff*.
To pass arguments to *numdiff* you need to have a file that has the same name as the expected output file but with the added suffix *.numdiff*.
For example, if an expected file is named *results.txt* then the file for passing arguments to *numdiff* would be *results.txt.numdiff*.

When passing arguments to *numdiff* the results.txt.numdiff file must define the CMake variable *NUMDIFF_ARGS*.
An example results.txt.numdiff file is shown below::

  set(NUMDIFF_ARGS "-R;version = [0-9]+\\.[0-9]+\\.[0-9]")

In this example lines matching 'version = 0.3.0' (and all other version numbers) will be ignored.
You cannot use the semi-colon (;) character in the definition of the arguments you pass to *numdiff*.
The semi-colon character when defining the *NUMDIFF_ARGS* variable is solely for the use of separating *numdiff* arguments.
You must also double escape characters that are not valid CMake escape sequences, as is shown in the example above with the fullstop (.) character.
