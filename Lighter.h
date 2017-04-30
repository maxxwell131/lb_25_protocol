//
//  Lighter.h
//  Urok_24
//
//  Created by Master on 27.01.16.
//  Copyright (c) 2016 Master. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prot.h"

@interface Lighter : NSObject<Usable>
{
    int battaryCapacity;
}

-(void)       chargeWithNumber: (NSNumber *) capacity;
-(int)        summa : (NSNumber *) a : (NSNumber *) b;

-(int)        summaWithInt: (int) a : (int) b;

-(id)         initWithCapasity : (int) capasity;
-(void)       charge           : (int) capasity;
-(NSString *) description;

@end
