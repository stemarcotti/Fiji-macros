# Fiji-macros
Miscellaneous of Fiji macros. To use save the relevant .ijm file locally and run it as a macro in [Fiji](https://fiji.sc/).

## Image saving

**[czi_to_tiff.ijm]**
Batch process all files in a folder and save them by converting from .czi images (Bioformats)  to .tiff format

**[save_all_open.ijm]**
Save all open images in .tiff format in an output folder of choice

**[save_separate_channels.ijm]**
Batch process all .tiff files in a folder and save 3 channels separately

## Image pre-processing

**[clahe_stack.ijm]**
Apply local contrast enhancement (CLAHE) to a Z-stack

**[segment_nuclei_threshold.ijm]**
Batch process all files in a folder and segment blobs (nuclei) in .tiff single channel images by auto-thresholding. The input and output file name pattern can be defined by the user.
