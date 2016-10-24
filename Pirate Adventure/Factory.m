//
//  Factory.m
//  Pirate Adventure
//
//  Created by Vitor Sousa on 14/09/16.
//  Copyright © 2016 Vitor Sousa. All rights reserved.
//

#import "Factory.h"

@implementation Factory

-(NSArray *)tiles{
    
    Tile *tile1 = [[Tile alloc] init];
    tile1.story = @"Capitão, precisamos de um líder sem medo, como você para uma aventura. Você deve derrotar o pirata mal antes que ele roube mais. Gostaria de uma espada embotada para começar? Utilize as setas abaixo para navegar e o botão de ação para interagir.";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart"];
    
    Weapon *espada = [[Weapon alloc] init];
    espada.name = @"Espada Embotada";
    espada.damage = 12;
    
    tile1.weapon = espada;
    tile1.actionButtonName = [NSString stringWithFormat:@"Pegar %@", espada.name];
    
    
    Tile *tile2 = [[Tile alloc] init];
    tile2.story = @"Você já se deparou com um arsenal. Você gostaria de atualizar sua armadura para armadura de aço?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith"];
    
    Armor *armaduraAco = [[Armor alloc] init];
    armaduraAco.name = @"Armadura de Aço";
    armaduraAco.health = 10;
    
    tile2.armor = armaduraAco;
    tile2.actionButtonName = [NSString stringWithFormat:@"Pegar %@", armaduraAco.name];
    
    Tile *tile3 = [[Tile alloc] init];
    tile3.story = @"Uma doca misteriosa aparece no horizonte. Devemos parar e pedir informações?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock"];
    tile3.healthEffect = 14;
    tile3.actionButtonName = @"Parar na doca";
    
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    
    Tile *tile4 = [[Tile alloc] init];
    tile4.story = @"Você encontrou um papagaio pode ser usado em seu slot de armadura! Os papagaios são um grande defensor e são ferozmente leal a seu capitão.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot"];
    
    Armor *papagaio = [[Armor alloc] init];
    papagaio.name = @"Papagaio de Pirata";
    papagaio.health = 20;
    
    tile4.armor = papagaio;
    tile4.actionButtonName = [NSString stringWithFormat:@"Adotar %@", papagaio.name];
    
    
    Tile *tile5 = [[Tile alloc] init];
    tile5.story = @"Você tropeçou em um esconderijo de armas piratas. Você gostaria de atualizar para uma pistola?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons"];
    
    Weapon *pistola = [[Weapon alloc] init];
    pistola.name = @"Pistola";
    pistola.damage = 30;
    
    tile5.weapon = pistola;
    tile5.actionButtonName = [NSString stringWithFormat:@"Pegar %@", pistola.name];
    
    
    Tile *tile6 = [[Tile alloc] init];
    tile6.story = @"Você foi capturado por piratas e estão ordenados para andar na prancha.";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank"];
    tile6.healthEffect = -25;
    tile6.actionButtonName = @"Não mostrar medo!";
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    

    Tile *tile7 = [[Tile alloc] init];
    tile7.story = @"Você avista uma batalha pirata ao largo da costa. Devemos impedir?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Lutar contra piratas!";
    
    Tile *tile8 = [[Tile alloc] init];
    tile8.story = @"A lenda do fundo, o poderoso kraken aparece.";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandonar navio";
    
    Tile *tile9 = [[Tile alloc] init];
    tile9.story = @"Você se depara com uma caverna escondida do tesouro do pirata.";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Pegar tesouro";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    Tile *tile10 = [[Tile alloc] init];
    tile10.story = @"Um grupo de piratas tenta embarcar em seu navio.";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Defender navio";
    
    Tile *tile11 = [[Tile alloc] init];
    tile11.story = @"No profundo do mar muitas coisas podem viver e muitas coisas podem ser encontrados. Será que a fortuna levar ajuda ou ruína?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Nadar profundamente";
    
    Tile *tile12 = [[Tile alloc] init];
    tile12.story = @"Seu rosto final, enfrente o temível pirata mal.";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Lutar";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    
    NSArray* tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}


-(Character *) character{
    
    Character *character = [[Character alloc] init];
    
    character.health = 100;
    
    Weapon *firstWeapon = [[Weapon alloc] init];
    firstWeapon.name = @"Punhos de Fúria";
    firstWeapon.damage = 10;
    
    character.weapon = firstWeapon;
    
    Armor *firstArmor = [[Armor alloc] init];
    firstArmor.name = @"Capa";
    firstArmor.health = 5;
    
    character.armor = firstArmor;
    
    
    return character;
}


-(Boss *) boss{
    
    Boss *boss = [[Boss alloc] init];
    boss.health = 65;
    
    return boss;
}

@end
