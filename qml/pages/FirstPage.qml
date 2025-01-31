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
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwsbinnenland") {
            generic.newsCategory = "Binnenland"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwsbuitenland") {
            generic.newsCategory = "Buitenland"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwspolitiek") {
            generic.newsCategory = "Politiek"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwseconomie") {
            generic.newsCategory = "Economie"
        } else if (feedListModel.source == "https://feeds.nos.nl/nossportalgemeen") {
            generic.newsCategory = "Sportnieuws"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosvoetbal") {
            generic.newsCategory = "Voetbal"
        } else if (feedListModel.source == "https://feeds.nos.nl/nossportformule1") {
            generic.newsCategory = "Formule 1"
        } else if (feedListModel.source == "https://feeds.nos.nl/nossportwielrennen") {
            generic.newsCategory = "Wielrennen"
        } else if (feedListModel.source == "https://feeds.nos.nl/nossportschaatsen") {
            generic.newsCategory = "Schaatsen"
        } else if (feedListModel.source == "https://feeds.nos.nl/nossporttennis") {
            generic.newsCategory = "Tennis"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwskoningshuis") {
            generic.newsCategory = "Koningshuis"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwstech") {
            generic.newsCategory = "Technologie"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwscultuurenmedia") {
            generic.newsCategory = "Cultuur & Media"
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwsopmerkelijk") {
            generic.newsCategory = "Opmerkelijk"
        } else if (feedListModel.source == "https://feeds.nos.nl/nieuwsuuralgemeen") {
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

    ListModel {
        id: mainCategoryModel
    }

    Component.onCompleted: {
        mainCategoryModel.append({
                                     "categorie": "Algemeen",
                                     "feed_source": "https://feeds.nos.nl/nosnieuwsalgemeen",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Binnenland",
                                     "feed_source": "https://feeds.nos.nl/nosnieuwsbinnenland",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Buitenland",
                                     "feed_source": "https://feeds.nos.nl/nosnieuwsbuitenland",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Cultuur & Media",
                                     "feed_source": "https://feeds.nos.nl/nosnieuwscultuurenmedia",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Economie",
                                     "feed_source": "https://feeds.nos.nl/nosnieuwseconomie",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Formule 1",
                                     "feed_source": "https://feeds.nos.nl/nossportformule1",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Jeugdjournaal",
                                     "feed_source": "https://feeds.nos.nl/jeugdjournaal",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Koningshuis",
                                     "feed_source": "https://feeds.nos.nl/nosnieuwskoningshuis",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Nieuwsuur",
                                     "feed_source": "https://feeds.nos.nl/nieuwsuuralgemeen",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "NOS op 3",
                                     "feed_source": "https://feeds.nos.nl/nosop3",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "NU.nl - Algemeen",
                                     "feed_source": "https://www.nu.nl/rss/Algemeen",
                                     "image_factor": 1.0
                                 })
        mainCategoryModel.append({
                                     "categorie": "Opmerkelijk",
                                     "feed_source": "https://feeds.nos.nl/nosnieuwsopmerkelijk",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Politiek",
                                     "feed_source": "https://feeds.nos.nl/nosnieuwspolitiek",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Schaatsen",
                                     "feed_source": "https://feeds.nos.nl/nossportschaatsen",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Sport",
                                     "feed_source": "https://feeds.nos.nl/nossportalgemeen",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Technologie",
                                     "feed_source": "https://feeds.nos.nl/nosnieuwstech",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Tennis",
                                     "feed_source": "https://feeds.nos.nl/nossporttennis",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Voetbal",
                                     "feed_source": "https://feeds.nos.nl/nosvoetbal",
                                     "image_factor": 1.7
                                 })
        mainCategoryModel.append({
                                     "categorie": "Wielrennen",
                                     "feed_source": "https://feeds.nos.nl/nossportwielrennen",
                                     "image_factor": 1.7
                                 })
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

            Repeater {
                model: mainCategoryModel
                ListItem {
                    contentHeight: Theme.itemSizeExtraSmall

                    HighlightImage {
                        anchors {
                            left: parent.left
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }
                        id: categoryIcon
                        source: "../img/" + categorie + ".svg"
                        height: categoryText.height
                        width: height
                        color: Theme.primaryColor
                    }
                    Label {
                        id: categoryText
                        anchors {
                            left: categoryIcon.right
                            leftMargin: Theme.paddingLarge
                            verticalCenter: parent.verticalCenter
                        }

                        text: categorie
                        font.pixelSize: Theme.fontSizeMedium
                        wrapMode: Text.WordWrap
                        truncationMode: TruncationMode.Fade
                    }

                    onClicked: {
                        // load new feed
                        feedListModel.source = feed_source
                        feedListModel.reload()
                        generic.imageFactor = image_factor
                        setCategory()

                        // scroll to top
                        listView.scrollToTop()

                        // go back to previous page
                        pageStack.push(mainPage)
                    }
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
