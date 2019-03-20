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

To run the container use the following command. By using -v any local directory will be mapped into the container to the /mnt mountpoint. The SSET tool (binary version) will automatically be run with default options (dedupe, adaptive compression and compaction on) on the Folder mapped to /mnt.
```
docker run -it -v [any local sir with subdirs]:/mnt cschnidr/sset
e.g.
docker run -it -v /Users/cschnidr/Documents/:/mnt cschnidr/sset
```

To change the behaviour of the SSET (e.g. to switch to secondary compression with 32K CG) use the following commands:
```
$ docker run -it -v /Users/cschnidr/Documents/:/mnt cschnidr/sset bash
root@17fe0be4a57d:/# cd /sset/sset4_3_linux_64/
root@17fe0be4a57d:/sset/sset4_3_linux_64# ./find_space -p /mnt -f tmp -g 8

Formula to calculate the space savings in percentage from the ratio is as following:
```
Space Reduction Percentage = 1 – (1 / Space Reduction Ratio)
e.g.
2.9:1 = 1-(1/2.9) = 0.655 = 65.5%
```
Source: https://www.snia.org/sites/default/files/Understanding_Data_Deduplication_Ratios-20080718.pdf
