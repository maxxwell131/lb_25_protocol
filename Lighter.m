//
//  Lighter.m
//  Urok_24
//
//  Created by Master on 27.01.16.
//  Copyright (c) 2016 Master. All rights reserved.
//

#import "Lighter.h"

@implementation Lighter

-(int) summa:(NSNumber *)a :(NSNumber *)b{
    int a1 = [a intValue];
    int b1 = [b intValue];
    
    NSLog(@"Lighter summa: %i + %i = %i", a1, b1, a1+b1);
    return a1+b1;
}

-(int) summaWithInt:(int)a :(int)b{
    NSLog(@"Lighter summaWithInt: %i + %i = %i", a, b, a+b);
    return a+b;
}

-(void) chargeWithNumber:(NSNumber *)capacity{
    NSLog(@"Тип параметра: %@", [capacity class]);
    
    if ([capacity isKindOfClass: [NSNumber class]]){
        int a = [capacity intValue];
    
        NSLog(@"Lighter charWithNumber capacity: %i", a);
        self->battaryCapacity += a;
    }
}

-(id) initWithCapasity:(int)capasity{
    self=[super init];
    if (self != nil){
        self->battaryCapacity = capasity;
    }
    return self;
}

-(void) charge:(int)capasity{
    NSLog(@"Lighter charge: %i", capasity);
    self->battaryCapacity += capasity;
}

-(NSString *) description{
    return [NSString stringWithFormat:
            @"Фонарик. Емкость аккумулятора : %i",
            self->battaryCapacity];
}

//-------- Реализация протокола Usable ----------
-(void) use
{
    if (self->battaryCapacity > 0)
    {
        self->battaryCapacity--;
        
        NSLog(@"Фонарь светит");
    }
    else
    {
        NSLog(@"Фонарь не может светить - зарядите аккумулятор");
    }
}

@end
