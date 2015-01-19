import QtQuick 2.0
import Ubuntu.Components 1.1

import ".."

KeyboardRow {
    keyWidth: units.gu(8)
    model: [
        KeyModel {
            text: "top"
            mainAction: Action { onTriggered: simulateCommand("top\n"); }
        },
        KeyModel {
            text: "clear"
            mainAction: Action { onTriggered: simulateCommand("clear\n"); }
        },
        KeyModel {
            text: "ls"
            mainAction: Action { onTriggered: simulateCommand("ls\n"); }
            actions: [
                Action { text: "-a"; onTriggered: simulateCommand("ls -a\n"); },
                Action { text: "-l"; onTriggered: simulateCommand("ls -l\n"); }
            ]
        },
        KeyModel {
            text: "rm"
            mainAction: Action { onTriggered: simulateCommand("rm"); }
            actions: [
                Action { text: "-r"; onTriggered: simulateCommand("rm -r"); }
            ]
        },
        KeyModel {
            text: "find"
            mainAction: Action { onTriggered: simulateCommand("find"); }
            actions: [
                Action { text: "-name"; onTriggered: simulateCommand("find . -name "); }
            ]
        },
        KeyModel {
            text: "chmod"
            mainAction: Action { onTriggered: simulateCommand("chmod"); }
            actions: [
                Action { text: "555"; onTriggered: simulateCommand("chmod 555"); },
                Action { text: "777"; onTriggered: simulateCommand("chmod 777"); }
            ]
        }
    ]
}