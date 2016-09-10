import QtQuick 2.4
import QtQuick.Scene3D 2.0
import Qt3D 2.0
import Qt3D.Renderer 2.0

Entity {
    id: sceneRoot

    Camera {
        id: camera
        projectionType: CameraLens.PerspectiveProjection
        fieldOfView: 45
        aspectRatio: 16/9
        nearPlane : 0.1
        farPlane : 1000.0
        position: Qt.vector3d( 0.0, 0.0, -20.0 )
        upVector: Qt.vector3d( 0.0, 1.0, 0.0 )
        viewCenter: Qt.vector3d( 0.0, 0.0, 0.0 )
    }

    Configuration  {
        controlledCamera: camera
    }

    FrameGraph {
        id : external_forward_renderer
        activeFrameGraph : ForwardRenderer {
            camera: camera
            clearColor: "black"
        }
    }

    components: [external_forward_renderer]

    TorusMesh {
        id: mesh
        radius: 5
        minorRadius: 1
        rings: 100
        slices: 20
    }

    Transform {
        id: transform
        Scale { scale3D: Qt.vector3d(1.5, 1, 0.5) }
        Rotate {
            angle: 45
            axis: Qt.vector3d(1, 0, 0)
        }
    }

    Material {
        id: material
        effect : Effect {
        }
    }

    Entity {
        id: mainEntity
        objectName: "mainEntity"
        components: [ mesh, material, transform ]
    }
}
