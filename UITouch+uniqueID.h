#import <Foundation/Foundation.h>

@interface UITouch (TCUniqueID)
/// Returns an identifier that uniquely identifies this particular
/// touch, of all the touches in all the world.
-(NSString*)tc_uniqueId;
@end
