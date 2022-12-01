set(TEST_GIT_REPO "https://github.com/libcellml/userguides")
set(TEST_COMMIT_HASH "79dd836f")

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
set(PYTEST_TARGETS
  tutorials/tutorial1/tutorial1_complete.py
  tutorials/tutorial2/tutorial2_complete.py
  tutorials/tutorial3/tutorial3_complete.py
  tutorials/tutorial4/tutorial4_complete.py
  tutorials/tutorial5/tutorial5_complete.py
  tutorials/hh_tutorial1/createGateModel_complete.py
  tutorials/hh_tutorial2/createPotassiumChannelModel_complete.py
  tutorials/hh_tutorial3/debugSodiumChannelModel_complete.py
  tutorials/hh_tutorial4/generateMembraneModel_complete.py
  tutorials/hh_tutorial5/solveGeneratedCode_complete.py
)
set(PYTEST_TARGETS_ENV
  "PYTHONPATH=@TEST_ROOT@/tutorials/utilities/"
)
set(TEST_TARGETS_ARGS
  tutorials/tutorial1/tutorial1.cellml
  tutorials/tutorial2/tutorial2.cellml
  "NOTFOUND"
  "NOTFOUND"
  tutorials/tutorial5/MysteryModel.cellml
  "NOTFOUND"
  tutorials/hh_tutorial2/
  tutorials/hh_tutorial3/SodiumChannelModel_broken.cellml
  tutorials/hh_tutorial4/MembraneModel.cellml
  "NOTFOUND"
)
set(PYTEST_TARGETS_ARGS ${TEST_TARGETS_ARGS})
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
  tutorials/tutorial3/expected_results/
  tutorials/tutorial4/expected_results/
  tutorials/tutorial5/expected_results/
  tutorials/hh_tutorial1/expected_results/
  tutorials/hh_tutorial2/expected_results/
  tutorials/hh_tutorial3/expected_results/
  tutorials/hh_tutorial4/expected_results/
  tutorials/hh_tutorial5/expected_results/
)
set(PYTEST_EXPECTED_RESULTS ${TEST_EXPECTED_RESULTS})

