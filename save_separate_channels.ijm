inputDir = getDirectory("Choose composite image directory");

fileList1 = getFileList(inputDir);

setBatchMode(true);
for (i = 0; i < fileList1.length; i++) {
	showProgress(i, fileList1.length);
	file1 = fileList1[i];
   	open(inputDir+file1);
  	title = getTitle();
  	
 	run("Split Channels");
 	one = "C1-" + title;
	two = "C2-" + title;
	three = "C3-" + title;
	
	selectWindow("C1-"+title);
	idch1 = getTitle();
	run("Enhance Local Contrast (CLAHE)", "blocksize=127 histogram=256 maximum=3 mask=*None* fast_(less_accurate)");
	saveAs("Tiff", inputDir + "/" + idch1);

//	selectWindow("C2-"+title);
//	idch2 = getTitle();
//	run("Enhance Local Contrast (CLAHE)", "blocksize=127 histogram=256 maximum=3 mask=*None* fast_(less_accurate)");
//	saveAs("Tiff", inputDir + "/" + idch2);
//
//	selectWindow("C3-"+title);
//	idch3 = getTitle();
//	run("Enhance Local Contrast (CLAHE)", "blocksize=127 histogram=256 maximum=3 mask=*None* fast_(less_accurate)");
//	saveAs("Tiff", inputDir + "/" + idch3);


	run("Close All");
	}