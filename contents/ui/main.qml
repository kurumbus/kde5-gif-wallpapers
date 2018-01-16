import QtQuick 2.0
import QtMultimedia 5.7
//Q_IMPORT_PLUGIN(qgif)

Item {
    Rectangle {
        width: animation.width; height: animation.height + 8

        AnimatedImage { id: animation; source: "/home/kurumbus/Videos/wp/wp.gif" }

        Rectangle {
            property int frames: animation.frameCount

            width: 4; height: 8
            x: (animation.width - width) * animation.currentFrame / frames
            y: animation.height
            color: "red"
        }
    }
}   

