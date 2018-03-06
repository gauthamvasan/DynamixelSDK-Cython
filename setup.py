# setup.py file
import sys
import os
import shutil

from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

# clean previous build
for root, dirs, files in os.walk(".", topdown=False):
    for name in files:
        if (name.startswith("dx_lib_v1") and not(name.endswith(".pyx") or name.endswith(".pxd"))):
            os.remove(os.path.join(root, name))
    for name in dirs:
        if (name == "build"):
            shutil.rmtree(name)

# build "myext.so" python extension to be added to "PYTHONPATH" afterwards...
setup(
    cmdclass = {'build_ext': build_ext},
    ext_modules = [
        Extension("dx_lib_v1",
                  sources=["dx_lib_v1.pyx",
                       ],
                  libraries=["dxl_x64_c"],
                  # language="c++",                   # remove this if C and not C++
                  extra_compile_args=["-I./home/gautham/DynamixelSDK/c/include/dynamixel_sdk/", "-fopenmp", "-O3"],
                  extra_link_args=["-L./home/gautham/DynamixelSDK/c/build/linux64/libdxl_x64_c.so",
                                   "-DSOME_DEFINE_OPT",],
             )
        ]
)      