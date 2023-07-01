import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    SilicaListView {
        id: coverListView
        anchors.fill: parent

        // Link to feedListModel
        model: feedListModel
        delegate: CoverDelegate {}

        // Dirty hack to show only first news item on cover
        spacing: Theme.paddingLarge * 20
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-cover-sync"
            onTriggered: {
                feedListModel.reload()
            }
        }
    }
}
