#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
    //获取FlutterViewController
    FlutterViewController * flutterVC = (FlutterViewController*)self.window.rootViewController ;
    //2创建flutterMethodChannel
    FlutterMethodChannel * channel = [FlutterMethodChannel methodChannelWithName:@"elxue.com/battery" binaryMessenger:flutterVC.binaryMessenger];
    
//    __weak typeof(self) weakSelf = self;
//    [channel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
//        if ([call.method isEqualToString:@"getBatteryInfo"]) {
//            UIDevice * device = [[UIDevice alloc]init];
//            device.batteryMonitoringEnabled = YES;
//            if (device.batteryState == UIDeviceBatteryStateUnknown) {
//                result(@(-1));
//            }else{
//                result(@(109));
//
//            }
//
//        }else{
//            result(FlutterMethodNotImplemented);
//        }
//    }];
    [channel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        if ([call.method isEqualToString:@"getBatteryInfo"]) {
            NSLog(@"%@",call.arguments);
            int level = [self getBatteryLevel];
            if (level == -1) {
//                result(@(120));
                result([FlutterError errorWithCode:@"不可用" message:@"不可用-message" details:@"不可用-deatil"]);
            }else{
                result(@(level));
            }
        }else{
             result(FlutterMethodNotImplemented);
        }
    }];

    
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}
- (int)getBatteryLevel{
    UIDevice * device = [[UIDevice alloc]init];
    device.batteryMonitoringEnabled = YES;
    if (device.batteryState == UIDeviceBatteryStateUnknown) {
        return -1;
    }
    return device.batteryLevel;
}
@end
