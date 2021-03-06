/*
Copyright 2016 Tyler Gilbert

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

import QtQuick 2.6
import "."

SItem {
    property alias listViewObject: listView;
    property alias delegate: listView.delegate;
    property alias model: listView.model;
    property alias background: listViewRect.color;
    //property alias border_color: listViewRect.border.color;

    implicitWidth: parent.width;
    blockWidth:  true;

    ListView {
        id: listView;
        anchors.fill: parent;

        Rectangle {
            id: listViewRect;
            anchors.fill: parent;
            color: "transparent";
            border.color: "transparent";
            border.width: 1;
            radius: theme.panel_border_radius;
        }

        clip: true;
        spacing: padding_vertical;

    }

}
