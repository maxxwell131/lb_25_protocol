//
//  PackedLunch.h
//  Urok_24
//
//  Created by Master on 27.01.16.
//  Copyright (c) 2016 Master. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prot.h"

//сухой пайок
@interface PackedLunch : NSObject<Usable>
{
    int weight;         //Общий вес
    int portionWeight;  //Вес одной порции
}

-(id) initWithWeight : (int) w : (int) portionW;
-(NSString *) description;

@end
