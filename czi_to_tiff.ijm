//inputDir = getDirectory("Choose composite image directory");
//
//fileList1 = getFileList(inputDir);
//
//setBatchMode(true);
//for (i = 0; i < fileList1.length; i++) {
//	showProgress(i, fileList1.length);
//	file1 = fileList1[i];
//   	open(inputDir+file1);
////   	run("Bio-Formats Importer", "open=" + path + "autoscale color_mode=Default view=Hyperstack stack_order=XYCZT");
//  	title = getTitle();
//
//  	saveAs("Tiff", inputDir + "/" + title);
//	close();
//}

dir = getDirectory("Choose Directory");
//dir2 = getDirectory("Destination Directory ");

list = getFileList(dir);

setBatchMode(true);

for (i=0; i<list.length; i++) {
	showProgress(i+1, list.length);
	path = dir + list[i];
	run("Bio-Formats Importer", "open=[" + path  + "] color_mode=Composite rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT");      
	
	saveAs("TIFF", dir+list[i]);
	run("Close All");
}