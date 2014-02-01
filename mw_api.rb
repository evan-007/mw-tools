class MWApi
	def definition(word, ref="/xml/")

	end


	private

	def key
		@key = '3b84ccd5-22a9-44ce-b22e-e5ffbef8e3b1'
	end
end


<?php

// This function grabs the definition of a word in XML format.
function grab_xml_definition ($word, $ref, $key)
	{	$uri = "http://www.dictionaryapi.com/api/v1/references/" . urlencode($ref) . "/xml/" . 
					urlencode($word) . "?key=" . urlencode($key);
		return file_get_contents($uri);
	};

$xdef = grab_xml_definition("test", "learners", "3b84ccd5-22a9-44ce-b22e-e5ffbef8e3b1");

?>