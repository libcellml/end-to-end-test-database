set(TEST_GIT_REPO "https://github.com/libcellml/userguides")
#set(TEST_COMMIT_HASH "adding-tutorial2")
set(TEST_TARGETS tutorial1_complete tutorial2_complete)
set(TEST_TARGETS_ARGS tutorials/tutorial1/tutorial1.cellml tutorials/tutorial2/tutorial2.cellml)
set(TEST_CMAKELISTS_DIR tutorials/tutorial1 tutorials/tutorial2)
set(TEST_EXPECTED_RESULTS tutorials/tutorial1/expected_results/ "NOTFOUND")

