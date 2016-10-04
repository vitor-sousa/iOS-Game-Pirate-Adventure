//
//  Character.h
//  Pirate Adventure
//
//  Created by Vitor Sousa on 14/09/16.
//  Copyright © 2016 Vitor Sousa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Armor.h"
#import "Weapon.h"

@interface Character : NSObject

@property (strong, nonatomic) Weapon *weapon;
@property (strong, nonatomic) Armor *armor;

@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
