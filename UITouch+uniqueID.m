#import "UITouch+uniqueID.h"
#import <objc/runtime.h>

static const void *kTCUniqueIdKey = &kTCUniqueIdKey;

@implementation UITouch (TCUniqueID)
-(NSString*)tc_uniqueId;
{
    id uniq = objc_getAssociatedObject(self, kTCUniqueIdKey);
    if(!uniq) {
        CFUUIDRef uuid = CFUUIDCreate(NULL);
        uniq = [(id)CFUUIDCreateString(NULL, uuid) autorelease];
        CFRelease(uuid);
        objc_setAssociatedObject(self, kTCUniqueIdKey, uniq, OBJC_ASSOCIATION_RETAIN);
    }
    return uniq;
}
@end
