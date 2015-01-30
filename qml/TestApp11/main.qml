import QtQuick 1.1
import com.nokia.meego 1.0

import "appConstants.js" as AppConstants

PageStackWindow {

    id: appWindow

    // UI constants
    property int defaultMargin : AppConstants.DefaultMargin
    property int headerFontSize : AppConstants.fontSizeLarge
    property string headerFontFamily : AppConstants.fontFamily
    property string buttonFontFamily : AppConstants.fontFamilyButton
    property int buttonFontSize : AppConstants.fontSizeButton

    // UI variables (may change due to orientation change)
    property int headerHeight
    property int headerTopSpacing
    property int headerBottomSpacing
    property int nColumns
    property string promptFontColor : "black"

    showStatusBar: false
    initialPage: mainPage

    MainPage {
        id: mainPage
    }


    ToolBarLayout {
        id: commonTools
        visible: true
        ToolIcon {
            platformIconId: "toolbar-view-menu"
            anchors.right: (parent === undefined) ? undefined : parent.right
            onClicked: (myMenu.status === DialogStatus.Closed) ? myMenu.open() : myMenu.close()
        }
    }

    Menu {
        id: myMenu
        visualParent: pageStack
        MenuLayout {
            MenuItem { text: qsTr("Sample menu item") }
        }
    }

    // adjust orientation dependent variables
    onInPortraitChanged: {
        headerHeight =
                (inPortrait)?AppConstants.HeaderDefaultHeightPortrait:
                             AppConstants.HeaderDefaultHeightLandscape
        headerTopSpacing =
                (inPortrait)?AppConstants.HeaderDefaultTopSpacingPortrait:
                             AppConstants.HeaderDefaultTopSpacingLandscape
        headerBottomSpacing =
                (inPortrait)?AppConstants.HeaderDefaultBottomSpacingPortrait:
                             AppConstants.HeaderDefaultBottomSpacingLandscape
        nColumns = (inPortrait)?3:5
    }
}
