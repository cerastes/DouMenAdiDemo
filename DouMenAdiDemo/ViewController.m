//
//  ViewController.m
//  DouMenAdiDemo
//
//  Created by JOB on 16/3/21.
//  Copyright © 2016年 mobi.wonders.ios.apps.cswhy. All rights reserved.
//

#import "ViewController.h"
#import "DMInterstitialAdController.h"
@interface ViewController ()<DMInterstitialAdControllerDelegate>
{
    DMInterstitialAdController *_dmInterstitial;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

//inline广告位(主要为banner)
- (IBAction)show1:(id)sender {
    NSLog(@"********************inline广告位(主要为banner)**************************");
    _dmAdView = [[DMAdView alloc] initWithPublisherId:@"56OJxOwouNx66Kebfe" placementId:@"16TLemWvAp9XzNUU3XX6j_zz"];
    _dmAdView.frame = CGRectMake(0, 20, DOMOB_AD_SIZE_320x50.width,DOMOB_AD_SIZE_320x50.height);
    
    _dmAdView.delegate = self; // 设置 Delegate
    _dmAdView.rootViewController = self; // 设置 RootViewController
    [self.view addSubview:_dmAdView]; // 将告视图添加到视图中
    [_dmAdView loadAd]; // 开始加载告
    [_dmAdView setAdSize:DOMOB_AD_SIZE_320x50];
    
    
    
}
//普通插屏广告位
- (IBAction)show2:(id)sender {
//    _dmAdView = [[DMAdView alloc] initWithPublisherId:@"56OJxOwouNx66Kebfe" placementId:@"16TLemWvAp9XzNUU3BUZ1L-i"];
    
    if (!_dmInterstitial) {
        _dmInterstitial = [[DMInterstitialAdController alloc] initWithPublisherId:@"56OJxOwouNx66Kebfe" placementId:@"16TLemWvAp9XzNUU3BUZ1L-i" rootViewController:self];
        _dmInterstitial.delegate = self; // 加载 条插屏 告
    }
   
   [_dmInterstitial loadAd];
    _dmInterstitial.view.backgroundColor = [UIColor redColor];
    if (_dmInterstitial.isReady) {
        [_dmInterstitial present];
    }
    else
    {
        [_dmInterstitial loadAd];
    }
    NSLog(@"********************普通插屏广告位**************************");
}
//开屏广告位
- (IBAction)show3:(id)sender {
    _dmAdView = [[DMAdView alloc] initWithPublisherId:@"56OJxOwouNx66Kebfe" placementId:@"16TLemWvAp9XzNUU34h0i-Xs"];
    NSLog(@"*********************开屏广告位*************************");
}
//信息流顶部广告位
- (IBAction)show4:(id)sender {
    _dmAdView = [[DMAdView alloc] initWithPublisherId:@"56OJxOwouNx66Kebfe" placementId:@"16TLemWvAp9XzNUU3Jky4qRk"];
    NSLog(@"*********************信息流顶部广告位*************************");
}
//多宝屋广告位
- (IBAction)show5:(id)sender {
    _dmAdView = [[DMAdView alloc] initWithPublisherId:@"56OJxOwouNx66Kebfe" placementId:@"16TLemWvAp9XzNUU3LdQSo8z"];
    NSLog(@"*********************多宝屋广告位*************************");
}
//Native广告位
- (IBAction)show6:(id)sender {
    _dmAdView = [[DMAdView alloc] initWithPublisherId:@"56OJxOwouNx66Kebfe" placementId:@"16TLemWvAp9XzNUU3pKXCMIi"];
    NSLog(@"*********************Native广告位*************************");
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
                                duration:(NSTimeInterval)duration
{
    [_dmAdView orientationChanged];
    
}

- (void)dmAdViewSuccessToLoadAd:(DMAdView *)adView{
    
}
- (void)dmAdViewFailToLoadAd:(DMAdView *)adView withError:(NSError *)error{
    
}
// 当将要呈现出 Modal View 时,回调该 法。如打开内置浏览器。
- (void)dmWillPresentModalViewFromAd:(DMAdView *)adView{
    
}
// 当呈现的 Modal View 被关闭后,回调该 法。如内置浏览器被关闭。
- (void)dmDidDismissModalViewFromAd:(DMAdView *)adView{
    
}
// 当因 户的操作(如点击下载类 告,需要跳转到Store),需要离开当前应 时,回调该 法
- (void)dmApplicationWillEnterBackgroundFromAd:(DMAdView *)adView{
    
}
@end
