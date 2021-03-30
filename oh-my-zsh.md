<div class="page-header">
  <h1>Cheatsheets <small>Oh My Zsh</small></h1>
</div>

### Sections
- [Git](#git)
- [Arch Linux](#arch)
- [Systemd](#systemd)
- [Miscellaneous](#misc)
- [Bindings](#bindings)
- [Docker](#docker)
- [Docker Compose](#docker-compose)
- [Emoji](#emoji)
- [Maven](#maven)
- [Nmap](#nmap)
- [Rsync](#rsync)
- [Tmux](#tmux)
- [Visual Studio Code](#code)
- [AWS / awsume](#aws)

### <a name="git"></a>Git
Alias | Command
--- | ---
`ga` | `git add`
`gaa` | `git add --all`
`grm` | `git rm`
`grmc` | `git rm --cached`
`gst` | `git status`
`gc` | `git commit -v`
`gc!` | `git commit -v --amend`
`gcam` | `git commit -a -m`
`gcmsg` | `git commit -m`
`gl` | `git pull`
`gup` | `git pull --rebase`
`gupa` | `git pull --rebase --autostash`
`gp` | `git push`
`gpoat` | `git push origin --all && git push origin --tags`
`gpsup` | `git push --set-upstream origin $(git_current_branch)`
`gd` | `git diff`
`gdca` | `git diff --cached`
`gds` | `git diff --staged`
`gsta` | `git stash push`
`gstd` | `git stash drop`
`gstl` | `git stash list`
`gstp` | `git stash pop`
`gts` | `git tag -s`
`gb` | `git branch`
`gba` | `git branch -a`
`gbd` | `git branch -d`
`gbD` | `git branch -D`
`gbr` | `git branch --remote`
`gcb` | `git checkout -b`
`gcm` | `git checkout $(git_main_branch)`
`gbl` | `git blame -b -w`
`gcl` | `git clone --recurse-submodules`
`gco` | `git checkout`
`gfa` | `git fetch --all --prune`
`glog` | `git log --oneline --decorate --graph`
`gloga` | `git log --oneline --decorate --graph --all`
`grb` | `git rebase`
`grba` | `git rebase --abort`
`grbc` | `git rebase --continue`
`grbi` | `git rebase -i`
`grh` | `git reset`
`grhh` | `git reset --hard`
`gclean` | `git clean -id`
`gpristine` | `git reset --hard && git clean -dffx`
`grename <old> <new>` | Rename old branch to new, including in origin remote

### <a name="arch"></a>Arch Linux
Alias | Description
--- | ---
`pacin` | Install packages from the repositories
`pacloc` | Display information about a package in the local database
`paclocs` | Search for packages in the local database
`paclsorphans` | List all orphaned packages
`pacmir` | Force refresh of all package lists after updating mirrorlist
`pacrem` | Remove packages, including its settings and dependencies
`pacrep` | Display information about a package in the repositories
`pacreps` | Search for packages in the repositories
`pacrmorphans` | Delete all orphaned packages
`pacrep` | Display information about a package in the repositories
`pacreps` | Search for packages in the repositories
`pacupd` | Update and refresh the local package database
`pacupg` | Sync with repositories before upgrading packages
`pacfiles` | Search package file names for matching strings
`pacls` | List files in a package
`pacown` | Show which package owns a file
`yain` | Install packages from the repositories, including AUR
`pacdisowned` | List all disowned files in your system
`paclist` | List all installed packages with a short description
`pacweb` | Open the website of an ArchLinux package

### <a name="systemd"></a>Systemd
Alias | Command
--- | ---
`sc-list-units` | `systemctl list-units`
`sc-status` | `systemctl status`
`sc-show` | `systemctl show`
`sc-start` | `systemctl start`
`sc-stop` | `systemctl stop`
`sc-restart` | `systemctl restart`
`sc-kill` | `systemctl kill`
`sc-enable` | `systemctl enable`
`sc-disable` | `systemctl disable`
`sc-enable-now` | `systemctl enable --now`
`sc-disable-now` | `systemctl disable --now`
`sc-reboot` | `systemctl reboot`
`sc-poweroff` | `systemctl poweroff`

### <a name="misc"></a>Miscellaneous
Command | Description
--- | ---
`ff` | `find . -type f -name`
`H` | `| head`
`T` | `| tail`
`G` | `| grep`
`L` | `| less`
`t` | `tail -f`
`md` | `mkdir -p`
`rd` | `rmdir`
`-` | `cd -`
`take <dir>` | create directory and `cd` into it
`dud` | `du -d 1 -h`
`duf` | `du -sh`
`fc` | edit last command in editor
`disown <pid>` | detach job from shell
`NUL` | `> /dev/null 2>&1`
`hsi` | do a case-insensitive search on your command history
`yt` | youtube download
`yta` | youtube download audio only
`pdf` | `mupdf`
`img` | `sxiv`
`coffee` | have a coffee break
`tf` | `terraform`
`extract <file>` | extracts the archive you pass it, independent of type
`x <file>` | extracts the archive you pass it, independent of type
`ss -natl` | list open ports
`catimg` | display image inside terminal
`hex` | show file in hex format
`copyfile` | copy contents of file to clipboard

### <a name="bindings"></a>Bindings
Binding | Description
--- | ---
`Ctrl-f` | accept autosuggested command
`Ctrl-j` | history search down
`Ctrl-k` | history search up
`Ctrl-x + e` | edit current command in editor

### <a name="docker"></a>Docker
Alias | Command
--- | ---
`d` | `docker`
`dc` | `docker container`
`di` | `docker image`
`dn` | `docker network`
`ds` | `docker system`
`dv` | `docker volume`

### <a name="docker-compose"></a>Docker Compose
Alias | Command
--- | ---
`dco` | `docker-compose`
`dcb` | `docker-compose build`
`dcps` | `docker-compose ps`
`dcrestart` | `docker-compose restart`
`dcrm` | `docker-compose rm`
`dcr` | `docker-compose run`
`dcstop` | `docker-compose stop`
`dcup` | `docker-compose up`
`dcupb` | `docker-compose up --build`
`dcupd` | `docker-compose up -d`
`dcdn` | `docker-compose down`
`dcl` | `docker-compose logs`
`dclf` | `docker-compose logs -f`
`dcstart` | `docker-compose start`
`dck` | `docker-compose kill`

### <a name="emoji"></a>Emoji
Alias | Description
--- | ---
`random_emoji` | outputs a random emoji
`random_emoji fruits` | outputs a random emoji from a group
`display_emoji` | list all available emoji
`display_emoji fruits` | list all available emoji from a group

### <a name="maven"></a>Maven
Alias | Command
--- | ---
`mvnci` | `mvn clean install`
`mvncist` | `mvn clean install -DskipTests`
`mvncp` | `mvn clean package`
`mvnct` | `mvn clean test`
`mvncv` | `mvn clean verify`
`mvnd` | `mvn deploy`
`mvnjetty` | `mvn jetty:run`
`mvnp` | `mvn package`
`mvntc` | `mvn tomcat:run`
`mvn-updates` | `mvn versions:display-dependency-updates`

### <a name="nmap"></a>Nmap
Alias | Description
--- | ---
`nmap_full` | aggressive full scan that scans all ports, tries to determine OS and service versions
`nmap_full_udp` | same as full but via UDP
`nmap_fast` | fast scan of the top 300 popular ports
`nmap_detect_versions` | detects versions of services and OS, runs on all ports

### <a name="rsync"></a>Rsync
Alias | Command
--- | ---
`rsync-copy` | `rsync -avz --progress -h`
`rsync-move` | `rsync -avz --progress -h --remove-source-files`
`rsync-update` | `rsync -avzu --progress -h`
`rsync-synchronize` | `rsync -avzu --delete --progress -h`

### <a name="tmux"></a>Tmux
Alias | Command
--- | ---
`ta` | `tmux attach -t`
`tl` | `tmux list-sessions`

### <a name="code"></a>Visual Studio Code
Alias | Command
--- | ---
`vsc` | `code .`
`vscd file file` | `code --diff file file`

### <a name="aws"></a>AWS / awsume
Alias | Description
--- | ---
`acp profile` | Assumes role, supports MFA
`acp` | Clears the profile
`aws_profiles` | Lists all available profiles
