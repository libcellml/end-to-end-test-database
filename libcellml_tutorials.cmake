set(TEST_GIT_REPO "https://github.com/libcellml/userguides")
#set(TEST_COMMIT_HASH "adding-tutorial2")
set(TEST_TARGETS 
  tutorial1_complete
  tutorial2_complete
  tutorial3_complete
  tutorial4_complete
  tutorial5_complete
  createGateModel_complete
  createPotassiumChannelModel_complete
  debugSodiumChannelModel_complete
  generateMembraneModel_complete
  solveGeneratedCode_complete
)
set(TEST_TARGETS_ARGS
  tutorials/tutorial1/tutorial1.cellml
  tutorials/tutorial2/tutorial2.cellml
  "NOTFOUND"
  "NOTFOUND"
  tutorials/tutorial5/MysteryModel.cellml
  "NOTFOUND"
  tutorials/hh_tutorial2/
  tutorials/hh_tutorial3/sodiumChannelModel_broken.cellml
  tutorials/hh_tutorial4/MembraneModel.cellml
  "NOTFOUND"
)
set(TEST_CMAKELISTS_DIR
  tutorials/tutorial1
  tutorials/tutorial2
  tutorials/tutorial3
  tutorials/tutorial4
  tutorials/tutorial5
  tutorials/hh_tutorial1
  tutorials/hh_tutorial2
  tutorials/hh_tutorial3
  tutorials/hh_tutorial4
  tutorials/hh_tutorial5
)
set(TEST_EXPECTED_RESULTS
  tutorials/tutorial1/expected_results/
  tutorials/tutorial2/expected_results/
  "NOTFOUND"
  "NOTFOUND"
  "NOTFOUND"
  "NOTFOUND"
  "NOTFOUND"
  "NOTFOUND"
  "NOTFOUND"
  "NOTFOUND"
)

