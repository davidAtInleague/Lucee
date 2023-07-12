component extends="org.lucee.cfml.test.LuceeTestCase"{
	function beforeAll(){
		variables.path = getTempFile( getTempDirectory(), "ldev2410", "txt" );	
	}

	function run( testResults, testBox ){
		describe( "test case for LDEV-2410", function() {
			it(title = "checking the file with READONLY Attribute", body = function( currentSpec ) {
				variables.myfile = FileOpen(path, "write");
				FileWrite(path,"I am in readonly file");
				fileSetAttribute(path,'readonly');
				expect(getfileinfo(path).canRead).toBe(true);
				expect(getfileinfo(path).canWrite).toBe(false);
			});	
			it(title = "checking the file with NORMAL Attribute", body = function( currentSpec ) {
				fileSetAttribute(path,'normal');
				FileWrite(path,"I am in normal file");
				expect(getfileinfo(path).canRead).toBe(true);
				expect(getfileinfo(path).canWrite).toBe(true);
			});	
		});
	}

}