import QtQuick 2.0
import QtQuick.XmlListModel 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow {
    id: generic

    property real imageFactor: 1.7
    property string newsCategory: "Algemeen nieuws"
    property string currentImage: ""
    property string currentTitle: ""
    property string currentPubDate: ""

    function date2dutch(pubDate) {
        // translate dow
        var pubDateTranslated = pubDate.replace("Sun,", "Zondag")
        pubDateTranslated = pubDateTranslated.replace("Mon,", "Maandag")
        pubDateTranslated = pubDateTranslated.replace("Tue,", "Dinsdag")
        pubDateTranslated = pubDateTranslated.replace("Wed,", "Woensdag")
        pubDateTranslated = pubDateTranslated.replace("Thu,", "Donderdag")
        pubDateTranslated = pubDateTranslated.replace("Fri,", "Vrijdag")
        pubDateTranslated = pubDateTranslated.replace("Sat,", "Zaterdag")
        // translate necessary months
        pubDateTranslated = pubDateTranslated.replace("Mar", "Maart")
        pubDateTranslated = pubDateTranslated.replace("May", "Mei")
        pubDateTranslated = pubDateTranslated.replace("Oct", "Okt")
        //remove seconds
        pubDateTranslated = pubDateTranslated.replace(/:([0-9]{2}) /g, " ")
        // replace offset by CEST
        return pubDateTranslated.replace(/\+(.+)/g, "CEST")
    }

    initialPage: Component {
        FirstPage {}
    }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations

    XmlListModel {
        id: feedListModel
        source: "https://feeds.nos.nl/nosnieuwsalgemeen"
        query: "/rss/channel/item"

        namespaceDeclarations: "declare namespace dc='http://purl.org/dc/elements/1.1/'; declare namespace content='http://purl.org/rss/1.0/modules/content/';"

        XmlRole {
            name: "title"
            query: "title/string()"
        }
        XmlRole {
            name: "link"
            query: "link/string()"
        }
        XmlRole {
            name: "pubDate"
            query: "pubDate/string()"
        }
        XmlRole {
            name: "description"
            query: "description/string()"
        }
        XmlRole {
            name: "content"
            query: "description/string()"
        }
        XmlRole {
            name: "image"
            query: "enclosure/@url/string()"
        }
    }
}
