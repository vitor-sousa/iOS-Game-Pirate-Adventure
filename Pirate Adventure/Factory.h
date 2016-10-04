//
//  Factory.h
//  Pirate Adventure
//
//  Created by Vitor Sousa on 14/09/16.
//  Copyright © 2016 Vitor Sousa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tile.h"
#import "Character.h"
#import "Boss.h"

@interface Factory : NSObject


-(NSArray *) tiles;
-(Character *) character;
-(Boss *) boss;

@end
