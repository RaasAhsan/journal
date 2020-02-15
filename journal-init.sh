#!/bin/bash

JOURNAL_DIRECTORY=~/.journal
JOURNAL_PATH=$JOURNAL_DIRECTORY/journal.txt
DIRNAME=$(dirname "$0")

mkdir -p $JOURNAL_DIRECTORY
touch $JOURNAL_PATH

journal-add() {
    $DIRNAME/journal-add.py ${*:1} >> $JOURNAL_PATH
}

journal-cat() {
    cat $JOURNAL_PATH
}

journal-tail() {
    journal-cat | tail
}

journal-drop() {
    OUT=$(journal-cat | $DIRNAME/journal-drop.py $JOURNAL_PATH)
    echo $OUT > $JOURNAL_PATH
}

journal-cd() {
    cd $JOURNAL_DIRECTORY
}

journal-git-push() {
    cd $JOURNAL_DIRECTORY
    git commit -am "journal"
    git push origin master
    cd -
}

journal-git-pull() {
    cd $JOURNAL_DIRECTORY
    git pull origin master
    cd -
}
