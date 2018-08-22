import Vapor
import Fluent

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "Hello, world!" example
    
    // 1
    let acronymsController = AcronymsController()
    // 2
    try router.register(collection: acronymsController)
    
    router.get(
        "api",
        "acronyms",
        use: acronymsController.getAllHandler)
    
    
}
