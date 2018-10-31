#!/bin/sh

### git clone https://github.com/corbolais/tgs.git

DIRTY=0

while read x
do
    DIRTY=1
done

if [ ${DIRTY} -eq 1 ]
then
    cd ~/.task
		git add tasknotes/
    git commit -m "Hook Commit" *.data taskrc taskopenrc tasknotes/*
    git pull -q
    git push -q
fi

echo ${1}
