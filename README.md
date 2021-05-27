# A gap junction-mediated calcium signaling network controls blood progenitor fate decisions in hematopoiesis.
Open source repository for source code for "A gap junction-mediated calcium signaling network controls blood progenitor fate decisions in hematopoiesis." (Ho K.Y.L., Khadilkar R.J., Carr R.L. &amp; Tanentzapf G.).
---
### System Requirements
- System requirements are those needed to run MATLAB R2017b or above. See [System Requirements for MATLAB](https://www.mathworks.com/support/requirements/matlab-system-requirements.html). MATLAB 2017b is the only software dependency.
- This script has been tested on both MATLAB R2017b and MATLAB R2019a.

### Installation Guide
- See [Download MATLAB](https://www.mathworks.com/downloads) to download MATLAB. MATLAB script file can be downloaded from [this](https://github.com/Tanentzapf-Lab/GapJunction_Hematopoiesis_Ho/) repository.
- Time to download MATLAB will depend on the system used.

### Demo
- Instructions to run the script are as follows:
> 1. Run the file "fluorDiff.m" in MATLAB.
> 2. Select the stain colour of the images from the drop down menu.
> 3. Select the Baseline fluorescence image (must be a ".tif" file) when prompted to select a file (window title should reflect this).
> 4. Select the Pre-Stimulation fluorescence image (must be a ".tif" file) when prompted to select a file (window title should reflect this).
> 5. Select the Post-Stimulation fluorescence image (must be a ".tif" file) when prompted to select a file (window title should reflect this).
> 6. Type in a lower bound for the calibration bar (Ex: 25).
> 7. Type in a upper bound for the calibration bar (Ex: 75).
- 2 figures will be generated, the Pre-Stimulation Difference Image and the Post-Stimulation Difference Image (it may take time for the colour map to be applied). Figures can be saved in the desired format from the figure window.
- Run time will depend on the input speed of the user and the size of images, however the script can be run in ~25 seconds.

### Instructions for Use
- Following the instructions above, use the provided images in the "dataset_sample" folder of [this](https://github.com/Tanentzapf-Lab/GapJunction_Hematopoiesis_Ho/) repository. 
- Lower and Upper bounds for the calibration bar were set to 25 and 75 respectively.
- Anticpated outcomes can be seen in the "dataset_sample_results" folder of [this](https://github.com/Tanentzapf-Lab/GapJunction_Hematopoiesis_Ho/) repository.
- Sample Input:
![Baseline Fluorescence Image](/dataset_sample/Baseline.tif)
![Pre-Stimulation Fluorescence Image](/dataset_sample/Pre-stimulation.tif)
![Post-Stimulation Fluorescence Image](/dataset_sample/Post-stimulation.tif)
- Sample Output:
![Pre-Stimulation Difference Image](/dataset_sample_results/Pre-Stimulation_DifferenceImage_25-75.tif)
![Post-Stimulation Difference Image](/dataset_sample_results/Post-Stimulation_DifferenceImage_25-75.tif)
