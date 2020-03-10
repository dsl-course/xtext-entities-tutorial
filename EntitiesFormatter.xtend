/*
 * generated by Xtext 2.12.0
 */
package fi.tucs.entities.formatting2

import com.google.inject.Inject
import fi.tucs.entities.entities.Entity
import fi.tucs.entities.entities.Field
import fi.tucs.entities.entities.Model
import fi.tucs.entities.entities.Statement
import fi.tucs.entities.services.EntitiesGrammarAccess
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument




// to refer to ENTITY__NAME, ENTITY__SUPER_TYPE
import static fi.tucs.entities.entities.EntitiesPackage.Literals.*




class EntitiesFormatter extends AbstractFormatter2 {
	
	@Inject extension EntitiesGrammarAccess

	def dispatch void format(Model model, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Entity entity : model.getEntities()) {
			entity.format;
		}
	}

	def dispatch void format(Entity entity, extension IFormattableDocument document) {
		
		entity.regionFor.keyword('extends').surround[oneSpace]
		entity.regionFor.feature(ENTITY__NAME).surround[oneSpace]
		entity.regionFor.feature(ENTITY__SUPER_TYPE).surround[oneSpace]
		
		
		val open = entity.regionFor.keyword('{')
		val close = entity.regionFor.keyword('}')
		open.append[newLine]
		interior(open, close)[indent]
		
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Field field : entity.getFields()) {
			field.append[setNewLines(1, 1, 2)]
		}
		for (Statement statement : entity.getStatements()) {
			statement.append[setNewLines(1, 1, 2)]
		}
	}
	
	// TODO: implement for AssignmentStatement, PrintStatement, Field
}
