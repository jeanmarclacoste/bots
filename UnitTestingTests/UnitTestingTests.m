//
//  UnitTestingTests.m
//  UnitTestingTests
//
//  Created by Jean-Marc Lacoste on 29/01/2015.
//  Copyright (c) 2015 Jean-Marc Lacoste. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ViewController.h" // Importer la classe à tester

@interface UnitTestingTests : XCTestCase

@end

@implementation UnitTestingTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    NSLog(@">>> Entrée dans un nouveau test");
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    NSLog(@">>> Sortie du test");

}

- (void)testCalculDeLaNote {
    // Exemple de test fonctionnel sur la méthode de calcul.
    double resultat = [ViewController calculDeLaNote:12 avecLeCoefficient:2 pourLaPersonne:@"John Doe" ];
    XCTAssertEqual(resultat, 24); // Le test est passé avec succés
    // XCTAssertEqual(resultat, 36); // Le test échoue
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        [ViewController calculDeLaNote:12 avecLeCoefficient:2 pourLaPersonne:@"John Doe" ];
    }];
}

@end
