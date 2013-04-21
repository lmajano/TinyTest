
component
	output = false
	hint = "I run a suite of test cases."
	{


	public any function init( required string testDirectory ) {

		variables.testDirectory = testDirectory;

		return( this );

	}


	// ---
	// PUBLIC METHODS.
	// ---


	// I get the list of tests that this runner knows about.
	public array function getTestCases() {

		var testCases = [];

		var files = directoryList( testDirectory, false, "name", "*Test.cfc" );

		for ( var file in files ) {

			arrayAppend( testCases, listFirst( file, "." ) );

		}

		return( testCases );

	}


	public any function runTestCases( required string testCaseList ) {


	}


	// ---
	// PRIVATE METHODS.
	// ---

}