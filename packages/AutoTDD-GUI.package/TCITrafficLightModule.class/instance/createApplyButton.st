building
createApplyButton
	
	| button transColor |
	transColor := (TranslucentColor new alpha: 0).
	button := IconicButton new
		labelGraphic: (self imageProvider loadResourceAt: #apply);
		color: transColor;
		borderColor: transColor;
		actionSelector: #applyButtonClicked;
		target: self;
		name: 'applyButton';
		yourself.
	button extent: (button findA: SketchMorph) extent - (0@6).
	self addMorph: button.