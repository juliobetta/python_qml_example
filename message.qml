import Qt 4.7

Rectangle {
  signal messageRequired;

  function updateMessage(text) {
    messageText.text = text
  }

  anchors.fill: parent; color: "#ededeb"

  Text {
    id: messageText
    anchors.centerIn: parent; color: "#444"
  }

  MouseArea {
    anchors.fill: parent
    onClicked: messageRequired()
  }
}