// save all open images in a folder of your choice 
dir = getDirectory("Choose output directory");
ids=newArray(nImages);
for (i=0;i<nImages;i++) {
        selectImage(i+1);
        file_name=getTitle();

        saveAs("Tiff", dir+file_name);
}
