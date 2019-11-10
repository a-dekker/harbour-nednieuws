import QtQuick 2.0
import QtQuick.XmlListModel 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    SilicaListView {
        id: listView
        anchors.fill: parent
        header: PageHeader {
            id: pageHeader
            // Adjust page title to current feed
            title: {
                if (feedListModel.source == "https://feeds.feedburner.com/nosjournaal") {
                    "Algemeen nieuws"
                }
                else if (feedListModel.source == "https://feeds.feedburner.com/nossportalgemeen") {
                    "Sportnieuws"
                }
                else if (feedListModel.source == "https://feeds.feedburner.com/nosnieuwsbinnenland") {
                    "Binnenland"
                }
                else if (feedListModel.source == "https://feeds.feedburner.com/nosnieuwsbuitenland") {
                    "Buitenland"
                }
                else if (feedListModel.source == "https://feeds.feedburner.com/nosnieuwspolitiek") {
                    "Politiek"
                }
                else if (feedListModel.source == "https://feeds.feedburner.com/nosnieuwseconomie") {
                    "Economie"
                }
                else if (feedListModel.source == "https://feeds.feedburner.com/nosnieuwsopmerkelijk") {
                    "Opmerkelijk"
                }
                else if (feedListModel.source == "https://feeds.feedburner.com/nosnieuwskoningshuis") {
                    "Koningshuis"
                }
                else if (feedListModel.source == "https://feeds.feedburner.com/nosnieuwscultuurenmedia") {
                    "Cultuur & Media"
                }
                else if (feedListModel.source == "https://feeds.feedburner.com/nosnieuwstechnologie") {
                    "Technologie"
                }
                else if (feedListModel.source == "https://feeds.feedburner.com/nosop3") {
                    "NOS op 3"
                }
            }
        }

        // Link to feedListModel
        model: feedListModel
        delegate: ArticleDelegate{}

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: "Ververs"
                onClicked: {
                    feedListModel.reload
                }
            }
            MenuItem {
                text: "Categorieën"
                onClicked: {
                    pageStack.push(categoryPage)
                }
            }
        }

    }

    // Category page; this page cointains more categories to keep the PullDownMenu clean
    Page {
        id: categoryPage

        SilicaFlickable {
            id: categoryColumnFlickable
            anchors.fill: parent

            contentHeight: categoryColumn.height

            Column {
                id: categoryColumn

                width: parent.width
                spacing: Theme.paddingSmall

                PageHeader {
                    anchors {
                        rightMargin: Theme.paddingSmall
                    }

                    title: "Categorieën"
                }

                // Binnenland
                ListItem {
                    contentHeight: Theme.itemSizeExtraSmall

                    Label {
                        anchors {
                            left: parent.left
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }

                        text: "Binnenland"
                        font.pixelSize: Theme.fontSizeMedium
                        wrapMode: Text.WordWrap
                        truncationMode: TruncationMode.Fade
                    }

                    onClicked: {
                        // load new feed
                        feedListModel.source = "https://feeds.feedburner.com/nosnieuwsbinnenland"
                        feedListModel.reload

                        // go back to previous page
                        pageStack.navigateBack()
                    }
                }

                // Buitenland
                ListItem {
                    contentHeight: Theme.itemSizeExtraSmall

                    Label {
                        anchors {
                            left: parent.left
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }

                        text: "Buitenland"
                        font.pixelSize: Theme.fontSizeMedium
                        wrapMode: Text.WordWrap
                        truncationMode: TruncationMode.Fade
                    }

                    onClicked: {
                        // load new feed
                        feedListModel.source = "https://feeds.feedburner.com/nosnieuwsbuitenland"
                        feedListModel.reload

                        // go back to previous page
                        pageStack.navigateBack()
                    }
                }

                // Politiek
                ListItem {
                    contentHeight: Theme.itemSizeExtraSmall

                    Label {
                        anchors {
                            left: parent.left
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }

                        text: "Politiek"
                        font.pixelSize: Theme.fontSizeMedium
                        wrapMode: Text.WordWrap
                        truncationMode: TruncationMode.Fade
                    }

                    onClicked: {
                        // load new feed
                        feedListModel.source = "https://feeds.feedburner.com/nosnieuwspolitiek"
                        feedListModel.reload

                        // go back to previous page
                        pageStack.navigateBack()
                    }
                }

                // Economie
                ListItem {
                    contentHeight: Theme.itemSizeExtraSmall

                    Label {
                        anchors {
                            left: parent.left
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }

                        text: "Economie"
                        font.pixelSize: Theme.fontSizeMedium
                        wrapMode: Text.WordWrap
                        truncationMode: TruncationMode.Fade
                    }

                    onClicked: {
                        // load new feed
                        feedListModel.source = "https://feeds.feedburner.com/nosnieuwseconomie"
                        feedListModel.reload

                        // go back to previous page
                        pageStack.navigateBack()
                    }
                }

                // Sport
                ListItem {
                    contentHeight: Theme.itemSizeExtraSmall

                    Label {
                        anchors {
                            left: parent.left
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }

                        text: "Sport"
                        font.pixelSize: Theme.fontSizeMedium
                        wrapMode: Text.WordWrap
                        truncationMode: TruncationMode.Fade
                    }

                    onClicked: {
                        // load new feed
                        feedListModel.source = "https://feeds.feedburner.com/nossportalgemeen"
                        feedListModel.reload

                        // go back to previous page
                        pageStack.navigateBack()
                    }
                }

                // Koningshuis
                ListItem {
                    contentHeight: Theme.itemSizeExtraSmall

                    Label {
                        anchors {
                            left: parent.left
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }

                        text: "Koningshuis"
                        font.pixelSize: Theme.fontSizeMedium
                        wrapMode: Text.WordWrap
                        truncationMode: TruncationMode.Fade
                    }

                    onClicked: {
                        // load new feed
                        feedListModel.source = "https://feeds.feedburner.com/nosnieuwskoningshuis"
                        feedListModel.reload

                        // go back to previous page
                        pageStack.navigateBack()
                    }
                }

                // Technologie
                ListItem {
                    contentHeight: Theme.itemSizeExtraSmall

                    Label {
                        anchors {
                            left: parent.left
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }

                        text: "Technologie"
                        font.pixelSize: Theme.fontSizeMedium
                        wrapMode: Text.WordWrap
                        truncationMode: TruncationMode.Fade
                    }

                    onClicked: {
                        // load new feed
                        feedListModel.source = "https://feeds.feedburner.com/nosnieuwstech"
                        feedListModel.reload

                        // go back to previous page
                        pageStack.navigateBack()
                    }
                }

                // Cultuur & Media
                ListItem {
                    contentHeight: Theme.itemSizeExtraSmall

                    Label {
                        anchors {
                            left: parent.left
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }

                        text: "Cultuur & Media"
                        font.pixelSize: Theme.fontSizeMedium
                        wrapMode: Text.WordWrap
                        truncationMode: TruncationMode.Fade
                    }

                    onClicked: {
                        // load new feed
                        feedListModel.source = "https://feeds.feedburner.com/nosnieuwscultuurenmedia"
                        feedListModel.reload

                        // go back to previous page
                        pageStack.navigateBack()
                    }
                }

                // Opmerkelijk
                ListItem {
                    contentHeight: Theme.itemSizeExtraSmall

                    Label {
                        anchors {
                            left: parent.left
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }

                        text: "Opmerkelijk"
                        font.pixelSize: Theme.fontSizeMedium
                        wrapMode: Text.WordWrap
                        truncationMode: TruncationMode.Fade
                    }

                    onClicked: {
                        // load new feed
                        feedListModel.source = "https://feeds.feedburner.com/nosnieuwsopmerkelijk"
                        feedListModel.reload

                        // go back to previous page
                        pageStack.navigateBack()
                    }
                }

                // NOS op 3
                ListItem {
                    contentHeight: Theme.itemSizeExtraSmall

                    Label {
                        anchors {
                            left: parent.left
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }

                        text: "NOS op 3"
                        font.pixelSize: Theme.fontSizeMedium
                        wrapMode: Text.WordWrap
                        truncationMode: TruncationMode.Fade
                    }

                    onClicked: {
                        // load new feed
                        feedListModel.source = "https://feeds.feedburner.com/nosop3"
                        feedListModel.reload

                        // go back to previous page
                        pageStack.navigateBack()
                    }
                }
            }
        }
    }

    // Article page; this page get pushed by ArticleDelegate after clicking on a news item
    Page {
        id: articlePage

        SilicaFlickable {
            id: columnFlickable
            anchors.fill: parent
            anchors.margins: Theme.paddingLarge

            contentHeight: column.height

            Column {
                id: column

                width: parent.width
                spacing: Theme.paddingLarge

                Label {
                    id: articleTitle
                    width: parent.width
                    font.pixelSize: Theme.fontSizeLarge
                    wrapMode: Text.WordWrap
                }

                Image {
                    id: articleImage
                    width: parent.width
                    height: width / 1.7

                    MouseArea {
                        anchors.fill: parent

                        onClicked: pageStack.push(imagePopup)
                    }
                }

                Label {
                    id: articleDate
                    width: parent.width
                    font.pixelSize: Theme.fontSizeExtraSmall
                    color: Theme.highlightColor
                    wrapMode: Text.WordWrap
                }

                Label {
                    id: articleContent
                    width: parent.width
                    font.pixelSize: Theme.fontSizeSmall
                    wrapMode: Text.WordWrap
                    //Open urls in browser
                    onLinkActivated: Qt.openUrlExternally(link)
                }
            }
        }

        Page {
            id: imagePopup

            allowedOrientations: Orientation.All

            // Image popup
            Rectangle {
                anchors.fill: parent

                color: "black"

                Image {
                    width: parent.width
                    height: width / 1.7

                    anchors.centerIn: parent

                    source: articleImage.source
                }
            }
        }
    }
}