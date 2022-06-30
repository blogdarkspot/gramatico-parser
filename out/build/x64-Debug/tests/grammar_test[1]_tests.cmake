add_test( Grammar.InputRules C:/projects/pessoal/gramatico-parser/out/build/x64-Debug/tests/grammar_test.exe [==[--gtest_filter=Grammar.InputRules]==] --gtest_also_run_disabled_tests)
set_tests_properties( Grammar.InputRules PROPERTIES WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==] VS_DEBUGGER_WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data)
add_test( Grammar.TwoLevels C:/projects/pessoal/gramatico-parser/out/build/x64-Debug/tests/grammar_test.exe [==[--gtest_filter=Grammar.TwoLevels]==] --gtest_also_run_disabled_tests)
set_tests_properties( Grammar.TwoLevels PROPERTIES WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==] VS_DEBUGGER_WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data)
add_test( Grammar.TreeLevels C:/projects/pessoal/gramatico-parser/out/build/x64-Debug/tests/grammar_test.exe [==[--gtest_filter=Grammar.TreeLevels]==] --gtest_also_run_disabled_tests)
set_tests_properties( Grammar.TreeLevels PROPERTIES WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==] VS_DEBUGGER_WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data)
add_test( Grammar.Recursive C:/projects/pessoal/gramatico-parser/out/build/x64-Debug/tests/grammar_test.exe [==[--gtest_filter=Grammar.Recursive]==] --gtest_also_run_disabled_tests)
set_tests_properties( Grammar.Recursive PROPERTIES WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==] VS_DEBUGGER_WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data)
add_test( PCFGTest.DPRules C:/projects/pessoal/gramatico-parser/out/build/x64-Debug/tests/grammar_test.exe [==[--gtest_filter=PCFGTest.DPRules]==] --gtest_also_run_disabled_tests)
set_tests_properties( PCFGTest.DPRules PROPERTIES WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==] VS_DEBUGGER_WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data)
add_test( PCFGTest.NPRules C:/projects/pessoal/gramatico-parser/out/build/x64-Debug/tests/grammar_test.exe [==[--gtest_filter=PCFGTest.NPRules]==] --gtest_also_run_disabled_tests)
set_tests_properties( PCFGTest.NPRules PROPERTIES WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==] VS_DEBUGGER_WORKING_DIRECTORY C:/projects/pessoal/gramatico-parser/data)
set( grammar_test_TESTS Grammar.InputRules Grammar.TwoLevels Grammar.TreeLevels Grammar.Recursive PCFGTest.DPRules PCFGTest.NPRules)
