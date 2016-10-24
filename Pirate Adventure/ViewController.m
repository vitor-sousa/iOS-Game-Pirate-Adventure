//
//  ViewController.m
//  Pirate Adventure
//
//  Created by Vitor Sousa on 25/08/15.
//  Copyright (c) 2015 Vitor Sousa. All rights reserved.
//

#import "ViewController.h"
#import "Factory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    Factory *factory = [[Factory alloc] init];
    _tiles = [factory tiles];
    _myCharc = [factory character];
    _boss = [factory boss];
    
    _currentPoint = CGPointMake(0, 0);
    
    [self updateCharacterStatsForArmor:nil withWeapons:nil withHealthEffect:0];
    
    [self changeTile];
    [self updateButtons];
 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Restart Game Method

- (void)restartGame{
    
    _myCharc = nil;
    _boss = nil;
    
    [self viewDidLoad];
    
}

#pragma mark - IBActions

- (IBAction)actionButton:(UIButton *)sender {
    
    Tile *tile = [[_tiles objectAtIndex:_currentPoint.x] objectAtIndex:_currentPoint.y];
    
    if([tile.actionButtonName isEqual: @"Lutar"]){
        _boss.health -= _myCharc.damage;
    }
    
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
 
    if(_myCharc.health <= 0){
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Game Over!" message:@"Você morreu, fim de jogo" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDestructive handler:nil];
        
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        
        [self restartGame];
        
    }else if(_boss.health <= 0){
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Parabéns!" message:@"Você derrotou o pirata, você ganhou!" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDestructive handler:nil];
        
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        
        [self restartGame];
        
    }
    
    [self changeTile];
    
}

- (IBAction)NorteButton:(UIButton *)sender {
    
    _currentPoint.y += 1;
    [self changeTile];
}

- (IBAction)LesteButton:(UIButton *)sender {
    
    _currentPoint.x += 1;
    [self changeTile];
}

- (IBAction)OesteButton:(UIButton *)sender {
    
    _currentPoint.x -= 1;
    [self changeTile];
}

- (IBAction)SulButton:(UIButton *)sender {
    
    _currentPoint.y -= 1;
    [self changeTile];
}


#pragma mark - Helper Methods

-(void)changeTile {
    
    Tile *tile = [[_tiles objectAtIndex:_currentPoint.x] objectAtIndex:_currentPoint.y];
    _storyLabel.text = tile.story;
    _backgroundImageView.image = tile.backgroundImage;
    
    [_actionButtonLabel setTitle:tile.actionButtonName forState:UIControlStateNormal];
    
    _armorLabel.text = _myCharc.armor.name;
    _healthLabel.text = [NSString stringWithFormat:@"%i", _myCharc.health];
    _weaponLabel.text = _myCharc.weapon.name;
    _damageLabel.text = [NSString stringWithFormat:@"%i", _myCharc.damage];
    
    
    [self updateButtons];
}

-(void)updateButtons {
    
    _oesteButtonLabel.hidden = [self tileExistsAtPoint:CGPointMake(_currentPoint.x - 1, _currentPoint.y)];
    
    _lesteButtonLabel.hidden = [self tileExistsAtPoint:CGPointMake(_currentPoint.x + 1, _currentPoint.y)];
    
    _norteButtonLabel.hidden = [self tileExistsAtPoint:CGPointMake(_currentPoint.x, _currentPoint.y + 1)];
    
    _sulButtonLabel.hidden = [self tileExistsAtPoint:CGPointMake(_currentPoint.x, _currentPoint.y - 1)];

}

-(void)updateCharacterStatsForArmor:(Armor *)armor withWeapons:(Weapon *)weapon withHealthEffect:(int) healthEffect{
   
    if(armor != nil){
        _myCharc.health = _myCharc.health - _myCharc.armor.health + armor.health;
        _myCharc.armor = armor;
    }else if (weapon != nil){
        _myCharc.damage = _myCharc.damage - _myCharc.weapon.damage + weapon.damage;
        _myCharc.weapon = weapon;
    }else if (healthEffect != 0){
        _myCharc.health = _myCharc.health + healthEffect;
    }else{
        _myCharc.health = _myCharc.health + _myCharc.armor.health;
        _myCharc.damage = _myCharc.damage + _myCharc.weapon.damage;
    }
    
}


-(BOOL)tileExistsAtPoint:(CGPoint)point {
    
    if(point.y >= 0 && point.x >= 0 && point.x < [_tiles count] && point.y < [[_tiles objectAtIndex:point.x] count]){
    
        return NO;
    }else{
        
        return YES;
    }
}

@end
