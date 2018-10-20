printing
hex
	| stream |
	stream := WriteStream with: '16r'.
	self asByteArray do: [ :each |
		stream
			nextPut: ('0123456789ABCDEF' at: each // 16 + 1);
			nextPut: ('0123456789ABCDEF' at: each \\ 16 + 1)].
	^ stream contents

