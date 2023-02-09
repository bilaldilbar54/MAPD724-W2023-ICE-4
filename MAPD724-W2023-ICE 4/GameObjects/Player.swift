import GameplayKit
import SpriteKit

class Player : GameObject
{
    // Initializer
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Lifecycle Functions
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        //Constraint the player on left boundary
        if(position.x <= -320)
        {
            position.x = -320
        }
        
        //Constraint the player on left boundary
        if(position.x >= 320)
        {
            position.x = 320
        }
    }
    
    override func Reset()
    {
        position.y = -640
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}
