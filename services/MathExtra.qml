pragma Singleton

import QtQuick
import Quickshell

Singleton {
    id: root

    function boundValue(value, floor, ceiling) {
        if (value < floor) {
            return floor;
        } else if (value > ceiling) {
            return ceiling;
        } else {
            return value
        }
    }
    
}