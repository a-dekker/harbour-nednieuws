import QtQuick 2.0
import QtQuick.XmlListModel 2.0
import Sailfish.Silica 1.0

Page {
    id: firstPage

    // First Page, this is the category page; this page cointains all categories and gets pushed as initial page. After the app starts, it automatically pushes te mainPage from here

    // After te firstPage is pushed, this timer starts running and pushes te mainPage and activates te visibleTimer
    Timer {
        interval: 0
        running: true
        onTriggered: {
            pageStack.push(mainPage)
            visibleTimer.start()
        }
    }

    // Wait with making categoryColumnFlickable visible until mainPage is pushed
    Timer {
        id: visibleTimer
        interval: 2000
        running: false
        onTriggered: {
            categoryColumnFlickable.visible = true
        }
    }

    function setCategory() {
        console.log(feedListModel.source)
        if (feedListModel.source == "https://www.nu.nl/rss/Algemeen") {
            generic.newsCategory = "NU.nl Algemeen nieuws"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwsalgemeen") {
            generic.newsCategory = "Algemeen nieuws"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwsbuitenland") {
            generic.newsCategory = "Binnenland"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwsbuitenland") {
            generic.newsCategory = "Buitenland"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwspolitiek") {
            generic.newsCategory = "Politiek"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwseconomie") {
            generic.newsCategory = "Economie"
        } else if (feedListModel.source == "https://feeds.nos.nl/nossportalgemeen") {
            generic.newsCategory = "Sportnieuws"
        } else if (feedListModel.source == "http://feeds.nos.nl/nosvoetbal") {
            generic.newsCategory = "Voetbal"
        } else if (feedListModel.source == "http://feeds.nos.nl/nossportformule1") {
            generic.newsCategory = "Formule 1"
        } else if (feedListModel.source == "http://feeds.nos.nl/nossportwielrennen") {
            generic.newsCategory = "Wielrennen"
        } else if (feedListModel.source == "http://feeds.nos.nl/nossportschaatsen") {
            generic.newsCategory = "Schaatsen"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwskoningshuis") {
            generic.newsCategory = "Koningshuis"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwstech") {
            generic.newsCategory = "Technologie"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwscultuurenmedia") {
            generic.newsCategory = "Cultuur & Media"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwsopmerkelijk") {
            generic.newsCategory = "Opmerkelijk"
        } else if (feedListModel.source == "http://feeds.nos.nl/nieuwsuuralgemeen") {
            generic.newsCategory = "Nieuwsuur"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosop3") {
            generic.newsCategory = "NOS op 3"
        } else if (feedListModel.source == "https://feeds.nos.nl/jeugdjournaal") {
            generic.newsCategory = "Jeugdjournaal"
        }
        currentImage = ""
        currentTitle = ""
        currentPubDate = ""
    }

    SilicaFlickable {
        id: categoryColumnFlickable
        anchors.fill: parent
        VerticalScrollDecorator {}

        // Set visibility to false to make the start look cleaner
        visible: false

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

            // Algemeen
            ListItem {
                contentHeight: Theme.itemSizeExtraSmall

                Label {
                    anchors {
                        left: parent.left
                        leftMargin: Theme.paddingLarge
                        verticalCenter: parent.verticalCenter
                    }

                    text: "Algemeen"
                    font.pixelSize: Theme.fontSizeMedium
                    wrapMode: Text.WordWrap
                    truncationMode: TruncationMode.Fade
                }

                onClicked: {
                    // load new feed
                    feedListModel.source = "https://feeds.nos.nl/nosnieuwsalgemeen"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
                }
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
                    feedListModel.source = "https://feeds.nos.nl/nosnieuwsbinnenland"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
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
                    feedListModel.source = "https://feeds.nos.nl/nosnieuwsbuitenland"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
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
                    feedListModel.source = "https://feeds.nos.nl/nosnieuwscultuurenmedia"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
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
                    feedListModel.source = "https://feeds.nos.nl/nosnieuwseconomie"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
                }
            }

            // Formule1
            ListItem {
                contentHeight: Theme.itemSizeExtraSmall

                Label {
                    anchors {
                        left: parent.left
                        leftMargin: Theme.paddingLarge
                        verticalCenter: parent.verticalCenter
                    }

                    text: "Formule 1"
                    font.pixelSize: Theme.fontSizeMedium
                    wrapMode: Text.WordWrap
                    truncationMode: TruncationMode.Fade
                }

                onClicked: {
                    // load new feed
                    feedListModel.source = "http://feeds.nos.nl/nossportformule1"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
                }
            }

            // Jeugdjournaal
            ListItem {
                contentHeight: Theme.itemSizeExtraSmall

                Label {
                    anchors {
                        left: parent.left
                        leftMargin: Theme.paddingLarge
                        verticalCenter: parent.verticalCenter
                    }

                    text: "Jeugdjournaal"
                    font.pixelSize: Theme.fontSizeMedium
                    wrapMode: Text.WordWrap
                    truncationMode: TruncationMode.Fade
                }

                onClicked: {
                    // load new feed
                    feedListModel.source = "https://feeds.nos.nl/jeugdjournaal"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
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
                    feedListModel.source = "https://feeds.nos.nl/nosnieuwskoningshuis"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
                }
            }

            // Nieuwsuur
            ListItem {
                contentHeight: Theme.itemSizeExtraSmall

                Label {
                    anchors {
                        left: parent.left
                        leftMargin: Theme.paddingLarge
                        verticalCenter: parent.verticalCenter
                    }

                    text: "Nieuwsuur"
                    font.pixelSize: Theme.fontSizeMedium
                    wrapMode: Text.WordWrap
                    truncationMode: TruncationMode.Fade
                }

                onClicked: {
                    // load new feed
                    feedListModel.source = "http://feeds.nos.nl/nieuwsuuralgemeen"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
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
                    feedListModel.source = "https://feeds.nos.nl/nosop3"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
                }
            }

            // NU.nl - Algemeen
            ListItem {
                contentHeight: Theme.itemSizeExtraSmall

                Label {
                    anchors {
                        left: parent.left
                        leftMargin: Theme.paddingLarge
                        verticalCenter: parent.verticalCenter
                    }

                    text: "NU.nl - Algemeen"
                    font.pixelSize: Theme.fontSizeMedium
                    wrapMode: Text.WordWrap
                    truncationMode: TruncationMode.Fade
                }

                onClicked: {
                    // load new feed
                    feedListModel.source = "https://www.nu.nl/rss/Algemeen"
                    feedListModel.reload()
                    generic.imageFactor = 1.0
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
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
                    feedListModel.source = "https://feeds.nos.nl/nosnieuwsopmerkelijk"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
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
                    feedListModel.source = "https://feeds.nos.nl/nosnieuwspolitiek"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
                }
            }

            // Schaatsen
            ListItem {
                contentHeight: Theme.itemSizeExtraSmall

                Label {
                    anchors {
                        left: parent.left
                        leftMargin: Theme.paddingLarge
                        verticalCenter: parent.verticalCenter
                    }

                    text: "Schaatsen"
                    font.pixelSize: Theme.fontSizeMedium
                    wrapMode: Text.WordWrap
                    truncationMode: TruncationMode.Fade
                }

                onClicked: {
                    // load new feed
                    feedListModel.source = "http://feeds.nos.nl/nossportschaatsen"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
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
                    feedListModel.source = "https://feeds.nos.nl/nossportalgemeen"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
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
                    feedListModel.source = "https://feeds.nos.nl/nosnieuwstech"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
                }
            }

            // Voetbal
            ListItem {
                contentHeight: Theme.itemSizeExtraSmall

                Label {
                    anchors {
                        left: parent.left
                        leftMargin: Theme.paddingLarge
                        verticalCenter: parent.verticalCenter
                    }

                    text: "Voetbal"
                    font.pixelSize: Theme.fontSizeMedium
                    wrapMode: Text.WordWrap
                    truncationMode: TruncationMode.Fade
                }

                onClicked: {
                    // load new feed
                    feedListModel.source = "http://feeds.nos.nl/nosvoetbal"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
                }
            }

            // Wielrennen
            ListItem {
                contentHeight: Theme.itemSizeExtraSmall

                Label {
                    anchors {
                        left: parent.left
                        leftMargin: Theme.paddingLarge
                        verticalCenter: parent.verticalCenter
                    }

                    text: "Wielrennen"
                    font.pixelSize: Theme.fontSizeMedium
                    wrapMode: Text.WordWrap
                    truncationMode: TruncationMode.Fade
                }

                onClicked: {
                    // load new feed
                    feedListModel.source = "http://feeds.nos.nl/nossportwielrennen"
                    feedListModel.reload()
                    generic.imageFactor = 1.7
                    setCategory()

                    // scroll to top
                    listView.scrollToTop()

                    // go back to previous page
                    pageStack.push(mainPage)
                }
            }
        }
    }

    Page {
        id: mainPage

        SilicaListView {
            id: listView
            anchors.fill: parent
            header: PageHeader {
                id: pageHeader
                title: generic.newsCategory
            }

            // Link to feedListModel
            model: feedListModel
            delegate: ArticleDelegate {}

            PullDownMenu {
                quickSelect: true

                MenuItem {
                    text: "Ververs"
                    onClicked: {
                        feedListModel.reload()
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
                    height: width / generic.imageFactor

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
                    height: width / generic.imageFactor

                    anchors.centerIn: parent

                    source: articleImage.source
                }
            }
        }
    }
}
