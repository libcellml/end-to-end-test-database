set(TEST_GIT_REPO "https://github.com/libcellml/userguides")
#set(TEST_COMMIT_HASH "adding-tutorial2")
set(TEST_TARGETS tutorial1_complete tutorial2_complete tutorial3_complete tutorial4_complete tutorial5_complete)
set(TEST_TARGETS_ARGS tutorials/tutorial1/tutorial1.cellml tutorials/tutorial2/tutorial2.cellml "NOTFOUND" "NOTFOUND" tutorials/tutorial5/MysteryModel.cellml)
set(TEST_CMAKELISTS_DIR tutorials/tutorial1 tutorials/tutorial2 tutorials/tutorial3 tutorials/tutorial4 tutorials/tutorial5)
set(TEST_EXPECTED_RESULTS tutorials/tutorial1/expected_results/ "NOTFOUND" "NOTFOUND" "NOTFOUND" "NOTFOUND")

