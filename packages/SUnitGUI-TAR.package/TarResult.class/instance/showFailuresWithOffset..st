morphcreation
showFailuresWithOffset: aOffset
	| offset |
	offset := aOffset.
	self testResultFailures keysAndValuesDo: [ :failedTestCaseName :isNew |
		| testResultMorph |
		testResultMorph := self createTestResultMorphWithOffset: offset colored: Color yellow.
		self createTestResultTextOn: testResultMorph withText: failedTestCaseName consider: isNew;
			createDelegateMorphOn: testResultMorph.
		self testResultMorphs at: failedTestCaseName asString put: testResultMorph.
		self addMorph: testResultMorph.
		testResultMorphsShown := true.
		offset := offset +1
	].
	^ offset