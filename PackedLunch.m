//
//  PackedLunch.m
//  Urok_24
//
//  Created by Master on 27.01.16.
//  Copyright (c) 2016 Master. All rights reserved.
//

#import "PackedLunch.h"

@implementation PackedLunch

-(id) initWithWeight:(int)w :(int)portionW{
    self = [super init];
    if (self != nil){
        self->portionWeight = portionW;
        self->weight = w;
    }
    return self;
}

-(NSString *)description{
    return [NSString stringWithFormat:
                    @"Сухой паек. Общий вес: %i. Вес порции : %i.",
                    self->weight, self->portionWeight];
}

-(int) getWeiht{
    return self->weight;
}

-(void) use
{
    if (self->weight > 0){
        self->weight -= self->portionWeight;
        NSLog(@"Съедена порция сухого пайка");
    }
    else{
        NSLog(@"Все порции пайка съедены");
    }
}

@end
