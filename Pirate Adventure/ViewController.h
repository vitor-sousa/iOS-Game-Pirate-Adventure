//
//  ViewController.h
//  Pirate Adventure
//
//  Created by Vitor Sousa on 25/08/15.
//  Copyright (c) 2015 Vitor Sousa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Character.h"
#import "Boss.h"

@interface ViewController : UIViewController

//iVars

@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) Character *myCharc;
@property (strong, nonatomic) Boss *boss;

//Outlets
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIButton *actionButtonLabel;

@property (strong, nonatomic) IBOutlet UILabel *healthLabel;
@property (strong, nonatomic) IBOutlet UILabel *damageLabel;
@property (strong, nonatomic) IBOutlet UILabel *armorLabel;
@property (strong, nonatomic) IBOutlet UILabel *weaponLabel;

@property (strong, nonatomic) IBOutlet UIButton *norteButtonLabel;
@property (strong, nonatomic) IBOutlet UIButton *lesteButtonLabel;
@property (strong, nonatomic) IBOutlet UIButton *oesteButtonLabel;
@property (strong, nonatomic) IBOutlet UIButton *sulButtonLabel;


//Actions
- (IBAction)actionButton:(UIButton *)sender;
- (IBAction)restartGameButton:(UIButton *)sender;

- (IBAction)NorteButton:(UIButton *)sender;
- (IBAction)LesteButton:(UIButton *)sender;
- (IBAction)OesteButton:(UIButton *)sender;
- (IBAction)SulButton:(UIButton *)sender;

@end

