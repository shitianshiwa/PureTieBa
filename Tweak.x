// 去掉首页的头部广告
%hook TBCHomePageViewController

- (id)headerView {
	return nil;
}

%end


// 去掉开屏广告
%hook TBCSplashLaunchADManager

+ (id)sharedInstance
{
	return nil;
}

%end


// 去掉 FEED 流中的广告