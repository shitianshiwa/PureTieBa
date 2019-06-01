#import <UIKit/UIKit.h>

// 去掉开屏广告
%hook TBCSplashLaunchADManager

+ (id)sharedInstance
{
	return nil;
}

%end

// 去掉首页的头部广告
%hook TBCHomePageViewController

- (id)headerView {
	return nil;
}

%end

// 去掉 FEED 流中的广告
%hook TBCLocalConfig

- (BOOL)showOtherAds
{
	return NO;
}

- (BOOL)showHomePageAds
{
	return NO;
}

- (BOOL)showFrsAds
{
	return NO;
}

- (BOOL)showPbAds
{
	return NO;
}

- (BOOL)showBigImageAds
{
	return NO;
}

%end

// 去掉首页 『领金币』 入口
%hook TBCChoicenessHeaderView

- (BOOL)isShowTaskEntrance
{
	return NO;
}

%end

// 去掉贴吧内 FEED 流广告和帖子内广告
%hook TBCLegoFactory

- (id)itemArrayFromJson:(id)arg1 forObject:(id)arg2
{
	return nil;
}

%end

// 去掉首页视频、直播 Feed

%hook NSMutableArray

- (void)safeAddObject:(id)obj
{
	if ([obj isKindOfClass:NSClassFromString(@"TBCFrsDataItem")]) {
		if ([obj valueForKey:@"videoInfo"] || [obj valueForKey:@"alaLiveInfo"]) {
			return;
		}
		return %orig;
	}
	return %orig;
}

%end

// 去掉 『我的』 页面广告
%hook TBCSwanHistoryItem

- (id)init
{
	return nil;
}

%end

%hook TBCTabMyBannerItem

- (id)init
{
	return nil;
}

%end

%hook TBCTabMyTableViewDataSource

- (id)slumdogMillionaireItem
{
	return nil;
}

- (id)taskCenterItem
{
	return nil;
}

- (id)cashLoanItem
{
	return nil;
}

- (id)redPacketItem
{
	return nil;
}

- (id)vipCenterItem
{
	return nil;
}

- (id)giftItem
{
	return nil;
}

- (id)cardBagItem
{
	return nil;
}

- (id)blueDiamondItem
{
	return nil;
}

- (id)continuousLoginGiftItem
{
	return nil;
}

- (id)baiduFinanceItem
{
	return nil;
}

- (id)baiduSimCardItem
{
	return nil;
}

- (id)swanGameItem
{
	return nil;
}

- (id)myLiveItem
{
	return nil;
}

%end