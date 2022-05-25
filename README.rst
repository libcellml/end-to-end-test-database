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

