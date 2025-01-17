component extends="org.lucee.cfml.test.LuceeTestCase" {
	public function run( testResults, testBox ) {
		describe( title="Testcase for Hash40() function", body=function() {
			var input  = 'this is a test';

			it(title="Checking the Hash40()", body=function( currentSpec ) {
				expect(Hash40( input)).toBe("54B0C58C7CE9F2A8B551351102EE0938");
			});

			it(title="Checking the Hash40() with algorithm argument", body=function( currentSpec ) {
				expect(Hash40( input, "CFMX_COMPAT")).toBe("54B0C58C7CE9F2A8B551351102EE0938");
				expect(Hash40( input, "MD5")).toBe("54B0C58C7CE9F2A8B551351102EE0938");
				expect(Hash40( input, "SHA")).toBe("FA26BE19DE6BFF93F70BC2308434E4A440BBAD02");
				expect(Hash40( input, "SHA-256")).toBe("2E99758548972A8E8822AD47FA1017FF72F06F3FF6A016851F45C398732BC50C");
				expect(Hash40( input, "SHA-384")).toBe("43382A8CC650904675C9D62D785786E368F3A99DB99AEAAA7B76B02530677154D09C0B6BD2E21B4329FD41543B9A785B");
				expect(Hash40( input, "SHA-512")).toBe("7D0A8468ED220400C0B8E6F335BAA7E070CE880A37E2AC5995B9A97B809026DE626DA636AC7365249BB974C719EDF543B52ED286646F437DC7F810CC2068375C");
			});
			it(title="Checking the Hash40() with encoding & algorithm arguments", body=function( currentSpec ) {
				expect(Hash40( input, "CFMX_COMPAT", "utf-8")).toBe("54B0C58C7CE9F2A8B551351102EE0938");
				expect(Hash40( input, "MD5", "iso-8859-1")).toBe("54B0C58C7CE9F2A8B551351102EE0938");
				expect(Hash40( input, "SHA", "utf-16")).toBe("BF0A36BF33C683F118C62CABCA9B21EE3D4928C8");
				expect(Hash40( input, "SHA-256", "us-ascii")).toBe("2E99758548972A8E8822AD47FA1017FF72F06F3FF6A016851F45C398732BC50C");
				expect(Hash40( input, "SHA-384", "big5")).toBe("43382A8CC650904675C9D62D785786E368F3A99DB99AEAAA7B76B02530677154D09C0B6BD2E21B4329FD41543B9A785B");
				expect(Hash40( input, "SHA-512", "euc-cn")).toBe("7D0A8468ED220400C0B8E6F335BAA7E070CE880A37E2AC5995B9A97B809026DE626DA636AC7365249BB974C719EDF543B52ED286646F437DC7F810CC2068375C");
			});

			it(title="Checking the Hash40() with encoding, algorithm & numIterations arguments", body=function( currentSpec ) {
				expect(Hash40( input, "CFMX_COMPAT", "utf-8", 1)).toBe("54B0C58C7CE9F2A8B551351102EE0938");
				expect(Hash40( input, "MD5", "iso-8859-1", 2)).toBe("9F72B68572D3706B312213F2E4B0A818");
				expect(Hash40( input, "SHA", "utf-16", 3)).toBe("1942EEE84635ACB46317C52109A1B75F338F9262");
				expect(Hash40( input, "SHA-256", "us-ascii", 4)).toBe("930765547597E9CB7DD9C462C132D75790DEF5DDD860169747C8C926741BBC57");
				expect(Hash40( input, "SHA-384", "big5", 5)).toBe("1182FB07A56CEF9479E36DAEAF10C40D51CA0AE175485EB10BA1CA14EE3A67D4AB50140D569CBBB6C6F05FD594F3B55A");
				expect(Hash40( input, "SHA-512", "euc-cn", 6)).toBe("A584EDCA68AB2F51C50087D9D6A0323C92D996CA6BBAC4250E7F06126A50C0EF1CF77EA80DF86B18DA1CB9090B9F0ABFF156053EFE3F698F7E9D5628225F1CD7");
			});
		});
	}
}