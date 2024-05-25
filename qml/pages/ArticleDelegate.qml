import QtQuick 2.0
import Sailfish.Silica 1.0

ListItem {
    id: container
    contentHeight: Theme.itemSizeHuge

    Text {
        id: imageSource
        visible: false
        text: image
    }

    // Put contents in a 'box'
    Item {
        anchors {
            fill: parent
            margins: Theme.paddingLarge
        }

        Image {
            id: containerImage
            width: height * generic.imageFactor
            height: parent.height
            anchors {
                top: parent.top
                left: parent.left
            }

            source: image
        }

        Label {
            id: containerTitle
            width: parent.width - containerImage.width - Theme.paddingLarge
            height: parent.height
            anchors {
                left: containerImage.right
                leftMargin: Theme.paddingLarge
            }

            text: title
            font.pixelSize: Theme.fontSizeExtraSmall * 1.1
            wrapMode: Text.WordWrap
            truncationMode: TruncationMode.Fade
        }
    }

    onClicked: {
        //Workaround: add extra return and > sign to sport articles, as they don't exist in some feeds
        if (feedListModel.source == "https://www.nu.nl/rss/Algemeen") {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        } else if (feedListModel.source == "https://feeds.nos.nl/nossportalgemeen") {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwspolitiek") {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwseconomie") {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwscultuurenmedia") {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwsopmerkelijk") {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        } else if (feedListModel.source == "https://feeds.nos.nl/nosvoetbal") {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        } else if (feedListModel.source == "https://feeds.nos.nl/nossportformule1") {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        } else if (feedListModel.source == "https://feeds.nos.nl/nossportwielrennen") {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        } else if (feedListModel.source == "https://feeds.nos.nl/nosnieuwstech") {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        } else if (feedListModel.source == "https://feeds.nos.nl/nieuwsuuralgemeen") {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        } else {
            //first scroll to top
            columnFlickable.contentY = 0
            //then add new information
            articleTitle.text = title
            articleDate.text = date2dutch(pubDate)
            articleImage.source = image
            articleContent.text = content.replace(/<\/p>/g, "</p>\n").replace(
                        /<\/h2>/g,
                        "</h2>\n") + '<br>&nbsp;&nbsp; <a href="' + link + '"><font color="'
                    + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
            pageStack.push(articlePage)
        }
        generic.currentImage = image
        generic.currentTitle = title
        generic.currentPubDate = date2dutch(pubDate)
    }
}
