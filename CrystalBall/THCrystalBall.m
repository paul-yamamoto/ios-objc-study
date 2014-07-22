//
//  THCrystalBall.m
//  CrystalBall
//
//  Created by Amit Bijlani on 8/27/13.
//  Copyright (c) 2013 Treehouse. All rights reserved.
//

#import "THCrystalBall.h"

@implementation THCrystalBall
//ランダムに出力する文字列を初期化
- (NSArray *) predictions {
    if (_predictions == nil){
        _predictions = [[NSArray alloc] initWithObjects:@"あめんぼあかいなあいうえお",
                        @"かきのきくりのきかきくけこ",
                        @"ささぎにすをかけさしすせそ",
                        @"たいこをたたくよたちつてと",
                        @"なめくじのろのろなにぬねの",
                        @"はとぽっぽほろほろははいふへほ",
                        @"まいまいまるまるまみむめも",
                        @"らっぱをふかすよらりるれろ",
                         nil];
    }
    return _predictions;
}

//ランダムに出力する文字列を出力
- (NSString*) randomPrediction {
    int random = arc4random_uniform(self.predictions.count);
    return [self.predictions objectAtIndex:random];
}

@end
