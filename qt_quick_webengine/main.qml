import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtWebEngine 1.10

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    WebEngineView {
        id: browser

        // https://switch2osm.org/using-tiles/getting-started-with-leaflet/
        anchors.fill: parent
        url: `data:text/html,
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
        <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
        <style>
            html, body {
                height: 100%;
                padding: 0;
                margin: 0;
            }

            .map {
                width: 100%;
                height: 100%;
            }
        </style>
        <div id="map" class="map"></div>
        <script type="text/javascript">
            // initialize Leaflet
            var map = L.map('map').setView({lon: 0, lat: 0}, 2);

            // add the OpenStreetMap tiles
            L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
              maxZoom: 19,
              attribution: '&copy; <a href="https://openstreetmap.org/copyright">OpenStreetMap contributors</a>'
            }).addTo(map);

            // show the scale bar on the lower left corner
            L.control.scale({imperial: true, metric: true}).addTo(map);

            // show a marker on the map
            L.marker({lon: 0, lat: 0}).bindPopup('The center of the world').addTo(map);
        </script>`
    }

    Button {
        text: "Dump state"
        anchors.centerIn: parent

        onClicked: {
            var result_fn = function(result) {
                console.log(JSON.stringify(result, null, 2))
            }

            browser.runJavaScript("L", result_fn)
        }
    }
}
