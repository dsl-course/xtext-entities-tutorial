/*
 * generated by Xtext 2.12.0
 */
package fi.tucs.entities.validation


/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class EntitiesValidator extends AbstractEntitiesValidator {
	
//	public static val INVALID_NAME = 'invalidName'
//
//	@Check
//	def checkGreetingStartsWithCapital(Greeting greeting) {
//		if (!Character.isUpperCase(greeting.name.charAt(0))) {
//			warning('Name should start with a capital', 
//					EntitiesPackage.Literals.GREETING__NAME,
//					INVALID_NAME)
//		}
//	}

	
	

	@Check
	def checkEntityNameStartsWithCapital(Entity entity) {
		if (entity.name.charAt(0).lowerCase) {
			warning("Entity name should start with a capital",
				EntitiesPackage.eINSTANCE.entity_Name
			)
		}
	}
	
	@Check
	def checkFieldNameStartsWithLowercase(  ) {
		
	}
	
}
