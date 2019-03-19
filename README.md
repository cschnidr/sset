# SSET - Space Savings Estimator Tool

SSET can be used to run on any data to learn about the efficiency a NetApp storage system would get out of it.
The tool is available on NetApp Fieldportal:
Source: https://fieldportal.netapp.com/content/437497

In order to build the container locally, the files from this repository need to be downloaded into one directory.
Additonally, the following file (SSET from Fieldportal) need to be put into the same directory:
sset4_3_linux_64.tar.gz

Docker need to be installed on the local machine: https://www.docker.com/get-started


To build the container the following command need to be invoked from the same directory:
```
docker build -t [tag] .
e.g.
docker build -t cschnidr/sset .
```

To run the container use the following command. By using -v any local directory will be mapped into the container to the /mnt mountpoint.
```
docker run -it -v [any local sir with subdirs]:/mnt cschnidr/sset
e.g.
docker run -it -v /Users/cschnidr/Documents/:/mnt cschnidr/sset
```
Please ready documentation provided with SSET to understand aggr/vol mappings.
