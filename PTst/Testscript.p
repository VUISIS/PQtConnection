test tcRegression [main=TestRegressionSuite]:
  assert Acyclic in
  (union QObject, { TestRegressionSuite });

test tcEnhancement [main=TestEnhancementSuite]:
  assert Acyclic in
  (union QObject, { TestEnhancementSuite });

