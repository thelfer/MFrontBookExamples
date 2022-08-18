<https://thelfer.github.io/MFrontGallery/web/install.html>

~~~~{.bash}
$ cmake ../MFrontBookExamples/ -DCMAKE_BUILD_TYPE=Release -Denable-c=ON -Denable-c++=ON -Denable-excel=ON -Denable-fortran=ON -Denable-python=ON -Denable-java=ON -Denable-octave=ON -Denable-generic=ON -Denable-castem=ON -Denable-castem-behaviours=ON -Denable-aster=ON -Denable-cyrano=ON -Denable-ansys=ON -Denable-europlexus=ON -Denable-calculix=ON -Denable-abaqus=ON -Denable-abaqus-explicit=ON -Denable-diana-fea=ON -Denable-mfront-documentation-generation=ON -DCMAKE_INSTALL_PREFIX=/home/th202608/codes/MFrontBookExamples/master/install
$ make -j 8 
$ make check -j 8
~~~~