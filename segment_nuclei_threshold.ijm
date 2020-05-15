dir = getDirectory("Select the directory");
list = getFileList(dir);
for(i=0;i<list.length;i++){
if(endsWith(list[i],".tif")&&indexOf(list[i],"C3")>=0){
	file1 = list[i];
   	open(dir+file1);
   	
	setAutoThreshold("Default dark");
	setOption("BlackBackground", true);
	run("Convert to Mask");
	run("Analyze Particles...", "size=10-Infinity pixel show=Masks in_situ");
	run("Fill Holes");
	title = getTitle();
	new_name = "mask_"+title;
	saveAs("Tiff", dir + "/" + new_name);
	close();
}
}


