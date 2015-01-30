import QtQuick 1.1
import com.nokia.meego 1.0

import "appConstants.js" as AppConstants

Page {

    property int currentColor : AppConstants.colorScheme

    tools: commonTools

    // the page header element
    Header {
        id: header
        headerText: "TestApp11"
    }

    // detect change in the currentColor property

    onCurrentColorChanged: {

        // apply the current color to the color scheme, header image and header button
        theme.colorScheme=currentColor
        header.color = currentColor

        // set the clicked button as checked
        radio2.checked = currentColor==2
        radio3.checked = currentColor==3
        radio4.checked = currentColor==4
        radio5.checked = currentColor==5
        radio6.checked = currentColor==6
        radio7.checked = currentColor==7
        radio8.checked = currentColor==8
        radio9.checked = currentColor==9
        radio10.checked = currentColor==10
        radio11.checked = currentColor==11
        radio12.checked = currentColor==12
        radio13.checked = currentColor==13
        radio14.checked = currentColor==14
        radio15.checked = currentColor==15
        radio16.checked = currentColor==16
        radio17.checked = currentColor==17
        radio18.checked = currentColor==18
        radio19.checked = currentColor==19
    }

    // the page contents
    Item {

        // anchor below header and use the default margins
        anchors {top: header.bottom;bottom: parent.bottom;
            left: parent.left; right: parent.right;
            leftMargin:defaultMargin;topMargin:defaultMargin}

        Text {
            id: prompt
            text: qsTr("Please select a color scheme")
            font.pixelSize: AppConstants.fontSizeSmall
            color: promptFontColor
        }

        // position the radio buttons using a grid layout

        Grid {

            columns: nColumns   // depends on orientation
            flow: Grid.TopToBottom
            spacing: AppConstants.RadioButtonSpacing
            anchors {top: prompt.bottom; topMargin: defaultMargin}

            RadioButton { id: radio2; text: "Color2"; onClicked: currentColor=2}
            RadioButton { id: radio3; text: "Color3"; onClicked: currentColor=3}
            RadioButton { id: radio4; text: "Color4"; onClicked: currentColor=4}
            RadioButton { id: radio5; text: "Color5"; onClicked: currentColor=5}
            RadioButton { id: radio6; text: "Color6"; onClicked: currentColor=6}
            RadioButton { id: radio7; text: "Color7"; onClicked: currentColor=7}
            RadioButton { id: radio8; text: "Color8"; onClicked: currentColor=8}
            RadioButton { id: radio9; text: "Color9"; onClicked: currentColor=9}
            RadioButton { id: radio10; text: "Color10"; onClicked: currentColor=10}
            RadioButton { id: radio11; text: "Color11"; onClicked: currentColor=11}
            RadioButton { id: radio12; text: "Color12"; onClicked: currentColor=12}
            RadioButton { id: radio13; text: "Color13"; onClicked: currentColor=13}
            RadioButton { id: radio14; text: "Color14"; onClicked: currentColor=14}
            RadioButton { id: radio15; text: "Color15"; onClicked: currentColor=15}
            RadioButton { id: radio16; text: "Color16"; onClicked: currentColor=16}
            RadioButton { id: radio17; text: "Color17"; onClicked: currentColor=17}
            RadioButton { id: radio18; text: "Color18"; onClicked: currentColor=18}
            RadioButton { id: radio19; text: "Color19"; onClicked: currentColor=19}
        }
    }

}
