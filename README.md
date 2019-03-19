# sset

Need to provide sset4_3_linux_64.tar.gz into the same local directory.
Source: https://fieldportal.netapp.com/content/437497

Build:
docker build -t cschnidr/sset .

Run:
docker run -it -v [any local sir with subdirs]:/mnt cschnidr/sset
e.g.
docker run -it -v /Users/cschnidr/Documents/:/mnt cschnidr/sset

Please ready documentation provided with SSET to understand aggr/vol mappings.
