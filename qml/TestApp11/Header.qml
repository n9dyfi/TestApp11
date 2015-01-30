import QtQuick 1.1
import com.nokia.meego 1.0
import "appConstants.js" as AppConstants

Item {

    property string color
    property alias headerText: titleLabel.text

    // header dimensions
    height: headerHeight
    width: parent.width

    ButtonStyle {
        id: buttonStyle
        textColor: "white"
        fontFamily: buttonFontFamily
        fontPixelSize: buttonFontSize
        background: AppConstants.ImagePrefix+color+AppConstants.ButtonBackground
        pressedBackground: AppConstants.ImagePrefix+color+AppConstants.ButtonPressedBackground

    }
    LabelStyle {
        id: labelStyle
        textColor: "white"
        fontFamily: headerFontFamily
        fontPixelSize: headerFontSize
    }

    // Header background image
    Image {
        id: titleImage
        //anchors.left: parent.left
        height: parent.height
        width: parent.width
        source: AppConstants.ImagePrefix+color+AppConstants.HeaderImageSuffix
    }

    // Header text
    Label {
        id: titleLabel
        platformStyle: labelStyle
        anchors {
            top:parent.top; topMargin:headerTopSpacing;
            bottom:parent.bottom; bottomMargin:headerBottomSpacing;
            left:parent.left; leftMargin:defaultMargin
        }
    }

    // Theme invert button
    Button {
        id: titleButton
        width: 130
        height: 40
        anchors { right: titleImage.right; rightMargin: defaultMargin
                  verticalCenter: titleImage.verticalCenter}
        platformStyle: buttonStyle
        text: "Invert"
        onClicked: {
            theme.inverted=!theme.inverted
            promptFontColor=theme.inverted?"White":"Black"
        }
    }
}
