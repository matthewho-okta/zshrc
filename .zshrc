# strap:straprc:begin
[ -r "$HOME/.strap/etc/straprc" ] && . "$HOME/.strap/etc/straprc"
# strap:straprc:end

export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
alias ls='ls -G'
alias okta_getdeps="cd ~/okta/okta-core; pushd ~/okta/okta-core >/dev/null; wansible; popd >/dev/null"
alias okta_bcc="mvn clean install -T1C -DskipTests=true"
alias okta_upgradeDB="ant upgrade.db"
alias okta_boostrapDB="ant reset.db upgrade.db deploy.local && ok mono redis flushall >/dev/null && ant start.tomcat.debug.async -Dskip.code.checks=true && ant bootstrap"
alias okh='cd ~/okta/okta-core'
alias restart_tomcat="ant smoke.tomcat && ant start.tomcat.debug.async -Dmonolith.profiles.active=dev-https"
alias gprb="git pull --rebase origin master"

alias okta_cleanbuild='ant smoke.tomcat clean build.fast reset.db upgrade.db deploy.local'

alias ep='mvn -B -T1C -Perror-prone   --fail-at-end   compile   test-compile   -Dskip.webapp.package   | tee error-prone-output.log'
alias cep='mvn clean;ep'
alias gca='git commit --amend'
alias gpo='git push origin'
alias gpofwl='gpo --force-with-lease'
alias rb_all='~/Documents/rebaseAllBranches/rebaseAllBranches.sh'
alias testbcc='~/Documents/rebaseAllBranches/clean_build.sh'
alias rbcc='rb_all && testbcc'

alias rbi='git rebase -i master'
alias squash='rbi && gca'

alias start_mc='/usr/local/Cellar/openjdk/16.0.1/bin/java -jar ~/Downloads/mc/server.jar'
alias lint='ok mono codecheck run'


# Created by `pipx` on 2021-07-13 21:43:32
export PATH="$PATH:/Users/matthewho/.local/bin"
