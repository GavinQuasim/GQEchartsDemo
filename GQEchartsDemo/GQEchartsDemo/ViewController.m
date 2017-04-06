//
//  ViewController.m
//  GQEchartsDemo
//
//  Created by Gavin on 2017/4/6.
//  Copyright © 2017年 Gavin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) PYZoomEchartsView *zoomEchartView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.zoomEchartView = [[PYZoomEchartsView alloc] initWithFrame:CGRectMake(10, 200, self.view.bounds.size.width-20, 300)];
    self.zoomEchartView.backgroundColor = [[UIColor grayColor]colorWithAlphaComponent:0.1];
    [self.view addSubview:self.zoomEchartView];
    
    [self.zoomEchartView setOption:[PYLineDemoOptions standardLineOption]];
    [self.zoomEchartView loadEcharts];
    
}

- (IBAction)didBtnStandardLine:(id)sender {
    
    PYOption *option = [PYLineDemoOptions standardLineOption];
    
    if (option != nil) {
        
        [self.zoomEchartView setOption:option];
    }
    [self.zoomEchartView loadEcharts];
}

@end
