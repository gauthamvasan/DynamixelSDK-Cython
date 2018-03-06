# DynamixelSDK-Cython
This repo contains a minimal Cython wrapper for ROBOTIS DynamixelSDK. Follow the instructions to [setup the DynamixelSDK C library](http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_sdk/library_setup/c_linux/#c-linux) and then change the directories in the pxd, pyx and setup.py files. 

I created the `setup.py` file as described [here](https://stackoverflow.com/questions/16993927/using-cython-to-link-python-to-a-shared-library). It can be compiled with disutils as follow to create the C extension library (.so files):

```
 python setup.py build_ext --inplace 
```

Once the `setup.py` compilation with disutils runs successfully, the `test_script.py` can be used to plot the results of a read_write op timing test.  
