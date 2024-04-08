# lcls-pcav

# Before you clone the GIT repository

1) Create a github account:
> https://github.com/

2) Email Ben Reese (https://github.com/bengineerd) your github username and request to be added to the "lcls-hps" github group
> https://github.com/orgs/slaclab/teams/lcls-hps/repositories

3) On the Linux machine that you will clone the github from, generate a SSH key (if not already done)
> https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

4) Add a new SSH key to your GitHub account
> https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/

5) Setup for large filesystems on github

```
$ git lfs install
```

# Clone the GIT repository

```
$ git clone --recursive git@github.com:slaclab/lcls-pcav
```

# How to build the firmware
This is still being figured out.

# hacking your way to launching the firmware
Followed this instruction to successfully launch simulink/sysgen 
For SLAC, matlab is located at: 
```
/afs/slac/g/controls/development/package/matlab/2017b/cefclient/sys/os/glnxa64
```
https://www.programmersought.com/article/56335887472/
If you have a libglib.so issue, follow the following link:
https://www.mathworks.com/matlabcentral/answers/397138-why-do-i-get-a-matlabwindow-application-failed-to-launch-error-when-launching-live-editor-app-des
