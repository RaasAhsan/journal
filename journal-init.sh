#!/bin/bash

journal-add() {
    ./journal-add.py ${*:1} >> $JOURNAL_PATH
}

journal-cat() {
    cat $JOURNAL_PATH
}

journal-tail() {
    journal-cat | tail
}

journal-drop() {
    OUT=$(journal-cat | ./journal-drop.py $JOURNAL_PATH)
    echo $OUT > $JOURNAL_PATH
}

export JOURNAL_DIRECTORY=~/.journal
export JOURNAL_PATH=$JOURNAL_DIRECTORY/journal.txt
mkdir -p $JOURNAL_DIRECTORY
touch $JOURNAL_PATH
