MokoX = {
	Version = "0.0.6.0",
	Build = 2,
	Beta = true
}
MokoNOL = 42;
function MokoX.DoCheck(eLanguage)
	lMax = MokoNOL;
	SystemLanguage = System.GetDefaultLangID()
	if SystemLanguage.Primary > lMax then
		return false
	else
		Sylang = String.Lower(sTable[SystemLanguage.Primary].Primary);
		if Sylang == String.Lower(eLanguage) then
			return true
		else
			return false
		end
	end
end
function MokoX.GetID()
	SystemLanguage = System.GetDefaultLangID()
	return {PrimaryID = SystemLanguage.Primary, DialectID = SystemLanguage.Secondary}
end
function MokoX.NOL()
	return MokoNOL
end
function MokoX.GetLanguage(b_Dial)
	if b_Dial == '' then
		b_Dial = true;
	elseif b_Dial == nil then
		b_Dial = true;
	elseif type(b_Dial) == 'boolean' then
		b_Dial = b_Dial;
	else
		return "Alignment 1 was not a boolean type"
	end
	SystemLanguage = System.GetDefaultLangID()
	lMax =  MokoX.NOL();
	if SystemLanguage.Primary == nil then
		return "Unable to return System Language, Error 404";
	elseif SystemLanguage.Primary == "" then
		return "Unable to return System Language, Error 404";
	elseif SystemLanguage.Primary > lMax then
		return "System Language is not supported by this plugin";
	end
	if (b_Dial) then
		if SystemLanguage.Secondary > sTable[SystemLanguage.Primary].TableType then   
			return sTable[SystemLanguage.Primary].Primary.."(Unsupported dialect)";
		else
			return sTable[SystemLanguage.Primary].Primary.."(".. sTable[SystemLanguage.Primary].Type[SystemLanguage.Secondary]..")";
		end
	else
		return sTable[SystemLanguage.Primary].Primary;
	end
end
-- Tables
-- ID 1 Arabic #16
sTable = {}
sTable[1] = {}
sTable[1].Primary = "Arabic";
sTable[1].TableType = 16
sTable[1].Type = {}
sTable[1].Type[0] = "Neutral";
sTable[1].Type[1] = "Saudi Arabia";
sTable[1].Type[2] = "Iraq";
sTable[1].Type[3] = "Egypt";
sTable[1].Type[4] = "Libya";
sTable[1].Type[5] = "Algeria";
sTable[1].Type[6] = "Morocco";
sTable[1].Type[7] = "Tunisia";
sTable[1].Type[8] = "Oman";
sTable[1].Type[9] = "Yemen";
sTable[1].Type[10] = "Syria";
sTable[1].Type[11] = "Jordan";
sTable[1].Type[12] = "Lebanon";
sTable[1].Type[13] = "Kuwait";
sTable[1].Type[14] = "U.A.E";
sTable[1].Type[15] = "Bahrain";
sTable[1].Type[16] = "Qatar";
-- ID 2 Bulgarian #0
sTable[2] = {}
sTable[2].Primary = "Arabic";
sTable[2].TableType = 0;
sTable[2].Type = {}
sTable[2].Type[0] = "Neutral";
-- ID 3 Catalan #0
sTable[3] = {}
sTable[3].Primary = "Catalan";
sTable[3].TableType = 0;
sTable[3].Type = {}
sTable[3].Type[0] = "Neutral";
-- ID 4 Chinese #5
sTable[4] = {}
sTable[4].Primary = "Chinese";
sTable[4].TableType = 5
sTable[4].Type = {}
sTable[4].Type[0] = "Neutral";
sTable[4].Type[1] = "Traditional";
sTable[4].Type[2] = "Simplified";
sTable[4].Type[3] = "Hong Kong SAR, PRC";
sTable[4].Type[4] = "Singapore";
sTable[4].Type[5] = "Macau SAR";
-- ID 5 Czech #0
sTable[5] = {}
sTable[5].Primary = "Czech";
sTable[5].TableType = 0;
sTable[5].Type = {}
sTable[5].Type[0] = "Neutral";
-- ID 6 Danish #0
sTable[6] = {}
sTable[6].Primary = "Danish";
sTable[6].TableType = 0;
sTable[6].Type = {}
sTable[6].Type[0] = "Neutral";
-- ID 7 German #5
sTable[7] = {}
sTable[7].Primary = "German";
sTable[7].TableType = 5;
sTable[7].Type = {}
sTable[7].Type[0] = "Neutral";
sTable[7].Type[1] = "German";
sTable[7].Type[2] = "Swiss";
sTable[7].Type[3] = "Austrian";
sTable[7].Type[4] = "Luxembourg";
sTable[7].Type[5] = "Liechtenstein";
-- ID 8 Greek #0
sTable[8] = {}
sTable[8].Primary = "Greek";
sTable[8].TableType = 0;
sTable[8].Type = {}
sTable[8].Type[0] = "Neutral";
-- ID 9 English #13
sTable[9] = {}
sTable[9].Primary = "English";
sTable[9].TableType = 13;
sTable[9].Type = {}
sTable[9].Type[0] = "Neutral";
sTable[9].Type[1] = "US";
sTable[9].Type[2] = "UK";
sTable[9].Type[3] = "Australian";
sTable[9].Type[4] = "Canadian";
sTable[9].Type[5] = "New Zealand";
sTable[9].Type[6] = "Ireland";
sTable[9].Type[7] = "South Africa";
sTable[9].Type[8] = "Jamaica";
sTable[9].Type[9] = "Caribbean";
sTable[9].Type[10] = "Belize";
sTable[9].Type[11] = "Trinidad";
sTable[9].Type[12] = "Zimbabwe";
sTable[9].Type[13] = "Philippines";
-- ID 10 Spanish #20
sTable[10] = {}
sTable[10].Primary = "Spanish";
sTable[10].TableType = 20;
sTable[10].Type = {}
sTable[10].Type[0] = "Neutral";
sTable[10].Type[1] = "Castilian";
sTable[10].Type[2] = "Mexican";
sTable[10].Type[3] = "Modern";
sTable[10].Type[4] = "Guatemala";
sTable[10].Type[5] = "Costa Rica";
sTable[10].Type[6] = "Panama";
sTable[10].Type[7] = "Dominican Republic";
sTable[10].Type[8] = "Venezuela";
sTable[10].Type[9] = "Colombia";
sTable[10].Type[10] = "Peru";
sTable[10].Type[11] = "Argentina";
sTable[10].Type[12] = "Ecuador";
sTable[10].Type[13] = "Chile";
sTable[10].Type[14] = "Uruguay";
sTable[10].Type[15] = "Paraguay";
sTable[10].Type[16] = "Bolivia";
sTable[10].Type[17] = "El Salvador";
sTable[10].Type[18] = "Honduras";
sTable[10].Type[19] = "Nicaragua";
sTable[10].Type[20] = "Puerto Rico";
-- ID 11 Finnish #0
sTable[11] = {}
sTable[11].Primary = "Finnish";
sTable[11].TableType = 0;
sTable[11].Type = {}
sTable[11].Type[0] = "Neutral";
-- ID 12 French #6
sTable[12] = {}
sTable[12].Primary = "French";
sTable[12].TableType = 6;
sTable[12].Type = {}
sTable[12].Type[0] = "Neutral";
sTable[12].Type[1] = "French";
sTable[12].Type[2] = "Belgian";
sTable[12].Type[3] = "Canadian";
sTable[12].Type[4] = "Swiss";
sTable[12].Type[5] = "Luxembourg";
sTable[12].Type[6] = "Monaco";
-- ID 13 Hebrew #0
sTable[13] = {}
sTable[13].Primary = "Hebrew";
sTable[13].TableType = 0;
sTable[13].Type = {}
sTable[13].Type[0] = "Neutral";
-- ID 14 Hungarian #0
sTable[14] = {}
sTable[14].Primary = "Hungarian";
sTable[14].TableType = 0;
sTable[14].Type = {}
sTable[14].Type[0] = "Neutral";
-- ID 15 Icelandic #0
sTable[15] = {}
sTable[15].Primary = "Icelandic";
sTable[15].TableType = 0;
sTable[15].Type = {}
sTable[15].Type[0] = "Neutral";
-- ID 16 Italian #2
sTable[16] = {}
sTable[16].Primary = "Italian";
sTable[16].TableType = 2;
sTable[16].Type = {}
sTable[16].Type[0] = "Neutral";
sTable[16].Type[1] = "Italian";
sTable[16].Type[2] = "Swiss";
-- ID 17 Japanese #0
sTable[17] = {}
sTable[17].Primary = "Japanese";
sTable[17].TableType = 0;
sTable[17].Type = {}
sTable[17].Type[0] = "Neutral";
-- ID 18 Korean #1
sTable[18] = {}
sTable[18].Primary = "Korean";
sTable[18].TableType = 1;
sTable[18].Type = {}
sTable[18].Type[0] = "Neutral";
sTable[18].Type[1] = "Neutral";
-- ID 19 Dutch #2
sTable[19] = {}
sTable[19].Primary = "Dutch";
sTable[19].TableType = 2;
sTable[19].Type = {}
sTable[19].Type[0] = "Neutral";
sTable[19].Type[1] = "Dutch";
sTable[19].Type[2] = "Belgian";
-- ID 20 Norwegian #2
sTable[20] = {}
sTable[20].Primary = "Norwegian";
sTable[20].TableType = 2;
sTable[20].Type = {}
sTable[20].Type[0] = "Neutral";
sTable[20].Type[1] = "Bokmal";
sTable[20].Type[2] = "Nynorsk";
-- ID 21 Polish #0
sTable[21] = {}
sTable[21].Primary = "Polish";
sTable[21].TableType = 0;
sTable[21].Type = {}
sTable[21].Type[0] = "Neutral";
-- ID 22 Portuguese #2
sTable[22] = {}
sTable[22].Primary = "Portuguese";
sTable[22].TableType = 2;
sTable[22].Type = {}
sTable[22].Type[0] = "Neutral";
sTable[22].Type[1] = "Brazilian";
sTable[22].Type[2] = "Portugal";
-- ID 23 Unset #0
sTable[23] = {}
sTable[23].Primary = "UnSet";
sTable[23].TableType = 0;
sTable[23].Type = {}
sTable[23].Type[0] = "Neutral";
-- ID 24 Romanian #0
sTable[24] = {}
sTable[24].Primary = "Romanian";
sTable[24].TableType = 0;
sTable[24].Type = {}
sTable[24].Type[0] = "Neutral";
-- ID 25 Russian #0
sTable[25] = {}
sTable[25].Primary = "Russian";
sTable[25].TableType = 0;
sTable[25].Type = {}
sTable[25].Type[0] = "Neutral";
-- ID 26 Croation #3
sTable[26] = {}
sTable[26].Primary = "Croation";
sTable[26].TableType = 0;
sTable[26].Type = {}
sTable[26].Type[0] = "Neutral";
sTable[26].Type[1] = "Neutral";
sTable[26].Type[2] = "Serbian(Latin)";
sTable[26].Type[3] = "Serbian(Cyrillic)";
-- ID 27 Sloval #0
sTable[27] = {}
sTable[27].Primary = "Slovak";
sTable[27].TableType = 0;
sTable[27].Type = {}
sTable[27].Type[0] = "Neutral";
-- ID 28 Albanian #0
sTable[28] = {}
sTable[28].Primary = "Albanian";
sTable[28].TableType = 0;
sTable[28].Type = {}
sTable[28].Type[0] = "Neutral";
-- ID 29 Swedish #2
sTable[29] = {}
sTable[29].Primary = "Swedish";
sTable[29].TableType = 2;
sTable[29].Type = {}
sTable[29].Type[0] = "Neutral";
sTable[29].Type[1] = "Swedish";
sTable[29].Type[2] = "Finland";
-- ID 30 Thai #0
sTable[30] = {}
sTable[30].Primary = "Thai";
sTable[30].TableType = 0;
sTable[30].Type = {}
sTable[30].Type[0] = "Neutral";
-- ID 31 Swedish #0
sTable[31] = {}
sTable[31].Primary = "Turkish";
sTable[31].TableType = 0;
sTable[31].Type = {}
sTable[31].Type[0] = "Neutral";
-- ID 32 Urdu #0
sTable[32] = {}
sTable[32].Primary = "Urdu";
sTable[32].TableType = 0;
sTable[32].Type = {}
sTable[32].Type[0] = "Neutral";
sTable[32].Type[1] = "Pakistan";
sTable[32].Type[2] = "India";
-- ID 33 Indonesian #0
sTable[33] = {}
sTable[33].Primary = "Indonesian";
sTable[33].TableType = 0;
sTable[33].Type = {}
sTable[33].Type[0] = "Neutral";
-- ID 34 Ukrainian #0
sTable[34] = {}
sTable[34].Primary = "Ukrainian";
sTable[34].TableType = 0;
sTable[34].Type = {}
sTable[34].Type[0] = "Neutral";
-- ID 35 Belarusian #0
sTable[35] = {}
sTable[35].Primary = "Belarusian";
sTable[35].TableType = 0;
sTable[35].Type = {}
sTable[35].Type[0] = "Neutral";
-- ID 36 Slovenian #0
sTable[36] = {}
sTable[36].Primary = "Slovenian";
sTable[36].TableType = 0;
sTable[36].Type = {}
sTable[36].Type[0] = "Neutral";
-- ID 37 Estonian #0
sTable[37] = {}
sTable[37].Primary = "Estonian";
sTable[37].TableType = 0;
sTable[37].Type = {}
sTable[37].Type[0] = "Neutral";
-- ID 38 Latvian #0
sTable[38] = {}
sTable[38].Primary = "Latvian";
sTable[38].TableType = 0;
sTable[38].Type = {}
sTable[38].Type[0] = "Neutral";
-- ID 39 Lithanian #1
sTable[39] = {}
sTable[39].Primary = "Lithanian";
sTable[39].TableType = 0;
sTable[39].Type = {}
sTable[39].Type[0] = "Neutral";
sTable[39].Type[1] = "Lithanian";
-- ID 40 Unset #0
sTable[40] = {}
sTable[40].Primary = "Unset";
sTable[40].TableType = 0;
sTable[40].Type = {}
sTable[40].Type[0] = "Neutral";
-- ID 41 Faris #0
sTable[41] = {}
sTable[41].Primary = "Faris";
sTable[41].TableType = 0;
sTable[41].Type = {}
sTable[41].Type[0] = "Neutral";
-- ID 42 Vietnamese #0
sTable[42] = {}
sTable[42].Primary = "Vietnamese";
sTable[42].TableType = 0;
sTable[42].Type = {}
sTable[42].Type[0] = "Neutral";
-- ID 43 Armenian #0
sTable[43] = {}
sTable[43].Primary = "Armenian";
sTable[43].TableType = 0;
sTable[43].Type = {}
sTable[43].Type[0] = "Neutral";
-- ID 44 Azeri #2
sTable[44] = {}
sTable[44].Primary = "Azeri";
sTable[44].TableType = 2;
sTable[44].Type = {}
sTable[44].Type[0] = "Neutral";
sTable[44].Type[1] = "Latin";
sTable[44].Type[2] = "Cyrillic";
-- ID 45 Basque #2
sTable[45] = {}
sTable[45].Primary = "Basque";
sTable[45].TableType = 2;
sTable[45].Type = {}
sTable[45].Type[0] = "Neutral";
-- ID 46 Unset #0
sTable[46] = {}
sTable[46].Primary = "Unset";
sTable[46].TableType = 0;
sTable[46].Type = {}
sTable[46].Type[0] = "Neutral";
-- ID 47 Basque #0
sTable[47] = {}
sTable[47].Primary = "FYRO Macedonian";
sTable[47].TableType = 0;
sTable[47].Type = {}
sTable[47].Type[0] = "Neutral";