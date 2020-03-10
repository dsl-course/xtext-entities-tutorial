package fi.tucs.entities.typing

import fi.tucs.entities.entities.Expression
import fi.tucs.entities.entities.IntConstant
import fi.tucs.entities.entities.StringConstant
import fi.tucs.entities.entities.BoolConstant
import fi.tucs.entities.entities.FieldRef

class ExpressionTypeComputer {

	def Expression_Type typeFor(Expression expr) {
		switch expr { // switch as guard
			IntConstant: // ...
			StringConstant: // ...
			BoolConstant: // ...
			FieldRef: // ...
			default: null
		}
	}
	
	def Expression_Type typeFor(Field f) {
		
		if (f.type instanceof BasicType) {
			// ...
		}
		
		if (f.type instanceof EntityType) {
			// ...
		}
		
	}

}