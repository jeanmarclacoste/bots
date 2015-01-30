//
//  ViewController.m
//  UnitTesting
//
//  Created by Jean-Marc Lacoste on 29/01/2015.
//  Copyright (c) 2015 Jean-Marc Lacoste. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

#pragma mark - Propriétés
@property(nonatomic,strong) NSString *nom;
@property(nonatomic,assign) NSInteger note;
@property(nonatomic,assign) NSInteger coefficient;

@end

@implementation ViewController


#pragma mark - Mes Méthodes

-(void)initialisation {
    self.nom = @"John Doe";
    self.note = 12;
    self.coefficient = 2;
}

+(NSInteger)calculDeLaNote:(NSInteger)laNote avecLeCoefficient:(NSInteger)leCoefficient pourLaPersonne:(NSString *)leNom {
    NSInteger valeur = laNote * leCoefficient;
    
    NSLog(@"Pour %@ : %ld * %ld = %ld", leNom, (long)laNote, (long)leCoefficient, (long)valeur);
    
    return valeur;
}

#pragma mark - ViewController Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Départ du ViewController.
    
    [self initialisation];
    
}

@end
