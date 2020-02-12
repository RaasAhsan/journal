#!/bin/bash

journal-add() {
    ./journal-add.py $JOURNAL_PATH ${*:1}
}

journal-cat() {
    cat $JOURNAL_PATH
}

journal-tail() {
    journal-cat | tail
}

journal-drop() {
    OUT=$(./journal-drop.py $JOURNAL_PATH)
    echo $OUT > $JOURNAL_PATH
}

export JOURNAL_PATH=~/.journal/journal.txt
mkdir -p ~/.journal
touch ~/.journal/journal.txt
