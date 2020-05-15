// save all czi images in a folder to tiff format 

dir = getDirectory("Choose input directory");

list = getFileList(dir);

setBatchMode(true);

for (i=0; i<list.length; i++) {
	showProgress(i+1, list.length);
	path = dir + list[i];
	run("Bio-Formats Importer", "open=[" + path  + "] color_mode=Composite rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT");

	saveAs("TIFF", dir+list[i]);
	run("Close All");
}
