from setuptools import setup, find_packages
setup(
    name="sscale",
    version="0.1",
    packages=find_packages(),
    install_requires=["tensorflow", "numpy"],
    scripts=["sscale.py"]
)
