//
//  Tile.h
//  Pirate Adventure
//
//  Created by Vitor Sousa on 14/09/16.
//  Copyright © 2016 Vitor Sousa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Weapon.h"
#import "Armor.h"

@interface Tile : NSObject

@property (strong, nonatomic) NSString* story;
@property (strong, nonatomic) UIImage* backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;

@property (strong, nonatomic) Weapon *weapon;
@property (strong, nonatomic) Armor *armor;
@property (nonatomic) int healthEffect;

@end
