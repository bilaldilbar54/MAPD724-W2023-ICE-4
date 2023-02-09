protocol GameProtocol
{
    //Initialization
    func Start()
    
    //Update Every frame
    func Update()
    
    //Check if the position is outside the bounds of the screen
    func CheckBounds()
    
    //A Method to reset the position
    func Reset()
}
