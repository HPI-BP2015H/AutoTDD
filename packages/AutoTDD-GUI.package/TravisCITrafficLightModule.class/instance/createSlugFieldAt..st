building
createSlugFieldAt: aPoint
	
	| textField |
	textField := TextFieldMorph new
		extent: 215@20; 
		position: aPoint + (5 @ 95);
		fontName: self class fontName size: self class fontSize; 
		contents: self travisSource;
		color: self class lightGray;
		borderWidth: 0;
		name: 'slugField';
		yourself.
	self addMorph: textField
	