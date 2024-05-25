import QtQuick 2.0
import Sailfish.Silica 1.0

ListItem {
    id: container
    contentHeight: Theme.itemSizeMedium

    Text {
        id: imageSource
        visible: false
        text: image
    }

    // Put contents in a 'box'
    Item {
        anchors {
            fill: parent
            margins: Theme.paddingMedium
        }

        Label {
            id: categoryLabel
            anchors {
                right: parent.right
                top: parent.top
            }

            font.pixelSize: Theme.fontSizeMedium / 1.2
            color: Theme.highlightColor

            text: generic.newsCategory
        }

        Image {
            id: containerImage
            height: parent.width / 1.7
            width: (generic.imageFactor == 1.0) ? height : parent.width
            anchors {
                top: categoryLabel.bottom
                topMargin: Theme.paddingMedium
                horizontalCenter: parent.horizontalCenter
            }

            source: generic.currentImage !== "" ? generic.currentImage : image
        }

        Label {
            id: containerTitle
            width: parent.width
            anchors {
                top: containerImage.bottom
                left: parent.left
            }

            text: generic.currentTitle !== "" ? generic.currentTitle : title

            font.pixelSize: Theme.fontSizeExtraSmall / 1.1
            wrapMode: Text.WordWrap
            truncationMode: TruncationMode.Fade
        }

        Label {
            id: containerDate
            width: parent.width
            anchors {
                top: containerTitle.bottom
                topMargin: Theme.paddingSmall
                left: parent.left
            }

            text: generic.currentPubDate !== "" ? generic.currentPubDate : date2dutch(pubDate)

            font.pixelSize: Theme.fontSizeExtraSmall / 1.5
            color: Theme.highlightColor
            wrapMode: Text.WordWrap
        }
    }
}
