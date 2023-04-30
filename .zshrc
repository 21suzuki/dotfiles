# alias
alias cat="bat"
alias cubemx='open -n -a STM32CubeMX'
alias cubeprogrammer='open -n -a STM32CubeProgrammer'
alias eagle='open -n -a EAGLE'
alias ls="exa"
alias gcc="/usr/local/bin/gcc-12 -std=c99 -Wall -Wextra"
alias g++="/usr/local/bin/g++-12 -std=c++17 -Wall -Wextra -Wconversion -pedantic"
alias clang="clang -std=c99 -Wall -Wextra"
alias clang++="clang++ -std=c++17 -Wall -Wextra -Wconversion"

_compinit() {
    local re_initialize=0
    for match in ${ZDOTDIR}/.zcompdump*(.Nmh+24); do
        re_initialize=1
        break
    done

    autoload -Uz compinit
    if [ "$re_initialize" -eq "1" ]; then
        compinit
        # update the timestamp on compdump file
        compdump
    else
        # omit the check for new functions since we updated today
        compinit -C
    fi
}
_compinit

# profiling
#if (which zprof > /dev/null 2>&1) ;then
#zprof
#fi
