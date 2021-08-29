@interface BBPhoneVideoParserResolve : NSObject
+ (id)shareInstance;
@property(retain, nonatomic) NSMutableDictionary *cacheVideoSourceDict; // @synthesize cacheVideoSourceDict=_cacheVideoSourceDict;
- (id)getEntityUserAgent:(id)arg1;
- (id)getEntityTypeTag:(id)arg1;
- (id)getEntitySourceFrom:(id)arg1;
- (id)getEntityMD5WithIndex:(long long)arg1 entityKey:(id)arg2;
- (_Bool)getEntityDashTag:(id)arg1;
- (int)getEntitySections:(id)arg1;
- (unsigned long long)getSectionExpectedFileSizeWithCount:(long long)arg1 entityKey:(id)arg2;
- (unsigned long long)getSectionTotalLengthWithCount:(long long)arg1 entityKey:(id)arg2;
- (id)getEntitySectionUrlWithCount:(long long)arg1 entityKey:(id)arg2;
- (_Bool)updateEpEntity:(id)arg1 item:(id)arg2 videoInfo:(id)arg3 error:(id *)arg4;
- (_Bool)updateAVEntity:(id)arg1 item:(id)arg2 videoInfo:(id)arg3 error:(id *)arg4;
- (_Bool)updateEntity:(id)arg1 error:(id *)arg2;
- (void)saveCache:(id)arg1 item:(id)arg2 videoInfo:(id)arg3;

@end

@class NSMutableArray;

@interface IJKMediaAssetStream : NSObject
@property(nonatomic) int bandwidth; // @synthesize bandwidth=_bandwidth;
@property(nonatomic) int groupId; // @synthesize groupId=_groupId;
@property(readonly, copy, nonatomic) NSMutableArray *segments; // @synthesize segments=_segments;
@property(readonly, nonatomic) long long codecType; // @synthesize codecType=_codecType;
@property(readonly, nonatomic) long long streamType; // @synthesize streamType=_streamType;
@property(readonly, nonatomic) int identifer; // @synthesize identifer=_identifer;
- (int)segmentCount;
- (id)segmentAtIndex:(int)arg1;
- (void)addSegment:(id)arg1;
@end

@class BBResolverVideoQuality, NSArray, NSString;

@interface BBResolverVideoMetaInfoModel : NSObject
@property(nonatomic) _Bool isLocalVideo; // @synthesize isLocalVideo=_isLocalVideo;
@property(nonatomic) _Bool isUsePreloadUrl; // @synthesize isUsePreloadUrl=_isUsePreloadUrl;
@property(retain, nonatomic) NSArray *qualityList; // @synthesize qualityList=_qualityList;
@property(nonatomic) _Bool isRexcode; // @synthesize isRexcode=_isRexcode;
@property(nonatomic) _Bool isDashVideo; // @synthesize isDashVideo=_isDashVideo;
@property(nonatomic) _Bool isSupportDLNA; // @synthesize isSupportDLNA=_isSupportDLNA;
@property long long currentQn; // @synthesize currentQn=_currentQn;
@property(retain, nonatomic) NSString *drmToken; // @synthesize drmToken=_drmToken;
@property(nonatomic) long long mediaSourceType; // @synthesize mediaSourceType=_mediaSourceType;
@property(retain, nonatomic) NSString *vid; // @synthesize vid=_vid;
@property(nonatomic) long long cid; // @synthesize cid=_cid;
@property(nonatomic) long long oid; // @synthesize oid=_oid;
@property(readonly, nonatomic) NSArray *qualityNumberList;
@property(readonly, nonatomic) _Bool isDrmAlreadyFreeUrl;
@property(readonly, nonatomic) _Bool isDrmVideo;
@property(readonly, nonatomic) _Bool isPUGVVideo;
@property(readonly, nonatomic) _Bool isPGCVideo;
@property(readonly, nonatomic) _Bool isThirdVideo;
@property(readonly, nonatomic) NSString *mediaSourceTypeStr;
@property(readonly) BBResolverVideoQuality *playingQuality;

@end


@class BBResolverBaseParsModel, BBResolverIjkPlayerItem, IJKMediaAsset, IJKMediaConfigParams, NSCondition, NSString;

@interface BBResolverMediaPlayerItem : NSObject
+ (id)checkIfNeedTransferToFreePlayurl:(id)arg1 mediaSourceType:(long long)arg2 transferState:(long long *)arg3 transferErrCode:(int *)arg4;
@property int reloadVideoCount; // @synthesize reloadVideoCount=_reloadVideoCount;
@property(nonatomic) int itemIOBlockedStatus; // @synthesize itemIOBlockedStatus=_itemIOBlockedStatus;
@property(retain) NSCondition *IOCondition; // @synthesize IOCondition=_IOCondition;
@property int delay; // @synthesize delay=_delay;
@property int freeUrlErrCode; // @synthesize freeUrlErrCode=_freeUrlErrCode;
@property long long mode; // @synthesize mode=_mode;
@property(retain) BBResolverIjkPlayerItem *currentItem; // @synthesize currentItem=_currentItem;
@property long long scheme; // @synthesize scheme=_scheme;
@property(retain) IJKMediaConfigParams *ijkOptions; // @synthesize ijkOptions=_ijkOptions;
@property(retain) IJKMediaAsset *currentAsset; // @synthesize currentAsset=_currentAsset;
@property(nonatomic) double initCacheTime; // @synthesize initCacheTime=_initCacheTime;
@property(nonatomic) _Bool isInteractiveVideo; // @synthesize isInteractiveVideo=_isInteractiveVideo;
@property(nonatomic) _Bool isNeedAutoPlay; // @synthesize isNeedAutoPlay=_isNeedAutoPlay;
@property(nonatomic) double startOfPostion; // @synthesize startOfPostion=_startOfPostion;
@property(nonatomic) long long dnsUpdate; // @synthesize dnsUpdate=_dnsUpdate;
@property(nonatomic) _Bool enableAudioPreemptive; // @synthesize enableAudioPreemptive=_enableAudioPreemptive;
@property(nonatomic) _Bool enableHwCodec; // @synthesize enableHwCodec=_enableHwCodec;
@property(nonatomic) long long playPosition; // @synthesize playPosition=_playPosition;
@property(nonatomic) _Bool isCanPlayOnWwan; // @synthesize isCanPlayOnWwan=_isCanPlayOnWwan;
@property(nonatomic) long long currentQn; // @synthesize currentQn=_currentQn;
@property(nonatomic) long long mediaSourceType; // @synthesize mediaSourceType=_mediaSourceType;
@property(retain, nonatomic) BBResolverBaseParsModel *parsModel; // @synthesize parsModel=_parsModel;
- (void)trackEventWithId:(id)arg1 extendedFields:(id)arg2;
- (void)logInfo:(unsigned long long)arg1 args:(id)arg2;
- (id)dashAudioStreams;
- (id)dashVideoStreams;
- (id)streams;
- (int)currentIOBlockedStatus:(int *)arg1;
- (void)resumeBlockedIO;
- (void)blockIO;
- (id)onMeteredNetworkUrlHook:(id)arg1;
- (id)onAssetUpdate:(id)arg1;
@property(readonly, nonatomic) NSString *neuronSession;
@property(readonly, nonatomic) long long cid;
@property(readonly, nonatomic) long long oid;
- (void)initTracker:(long long)arg1;
- (_Bool)isExistSpecialQualityStream:(long long)arg1;
- (void)addStreams:(id)arg1;
- (void)cleanCacheItem;
- (id)readCacheItem;
@end

/*
%hook BBPhoneVideoParserResolve
- (id)getEntitySectionUrlWithCount:(int)count entityKey:(NSString *)key {
    id ret = %orig;
    NSLog(@"getEntitySectionUrlWithCount:%d entityKey:%@ returning: %llu", count, key, (unsigned long long)ret);
    return ret;
}
%end
*/

@interface BFCDownloadManager : NSObject
+ (id)shared;
- (BBPhoneVideoParserResolve *)getParserResolve;
@end

@interface BFCDownloadEpEntity : NSObject
- (id)entityKey;
@end

%hook BFCDownloadEpEntity
- (id)getSectionUrlWithCount:(int)count {
    BBPhoneVideoParserResolve *resolver = [[%c(BFCDownloadManager) shared] getParserResolve];
    id kv = [resolver cacheVideoSourceDict][[self entityKey]];
    BBResolverVideoMetaInfoModel *videoInfo = [kv performSelector:@selector(videoInfo)];
    BBResolverMediaPlayerItem *item = [kv performSelector:@selector(item)];
    if (![videoInfo isDashVideo])
        return %orig;
    if (count == 1) {
        return %orig;
    } else if (count == 0) {
        for (IJKMediaAssetStream *stream in [item dashVideoStreams]) {
            NSLog(@"Current stream: %@", stream);
            if (stream.identifer == [item currentQn]){
                NSLog(@"Found target stream, returning");
                return [[[stream segments] firstObject] url];
            }
        }
        NSLog(@"No matching stream...");
        return [[ [[ [item dashVideoStreams] firstObject] segments] firstObject] url];
    } else {
        return %orig;
    }
    
}
%end

%hook BBResolverPGCParsModel
- (void)setIsDownload:(bool)downloaded {
    %orig(0);
}

- (bool)isDownload {
    return 0;
}
%end



// --------------- Hook Md5 check after download ----------------

@interface BFCDownloadBaseEntity
- (NSString *)getSectionMD5:(long long)index;
@end

@interface BFCDownloadTask
- (BFCDownloadBaseEntity *)recoverEntity;
@end

@interface BFCDownloadTaskCFNetworkOperation
- (BFCDownloadTask *)downloadTask;
@end

%hook BFCDownloadTaskCFNetworkOperation
- (bool) checkMD5ForIndex:(long long)index filePath:(id)path {
    NSString *md5str = [[[self downloadTask] recoverEntity] getSectionMD5:index];
    if (![md5str length]) {
        NSLog(@"Returning check passed due to missing md5 hashes");
        return YES;
    }
    return %orig;
}
%end

// ----------------- Hook allow download -----------------------


%hook QLMovieItem
- (bool)canDownload {
    return YES;
}
%end

%hook BBPadVideo
- (bool)allow_download {
    return YES;
}
%end

%hook BBMusicConfig
- (bool)allowWWANDownload {
    return YES;
}
%end


%hook BBPhoneVideoInfoPagesCell
- (bool)allowDownload {
    return YES;
}
%end

%hook BBPgcPhoneModelBangumiSeason
- (bool)allow_download {
    return YES;
}
%end

%hook BBPhonePlayerVideoInfoPagesTabPagesViewM3
- (bool)allowDownload {
    return YES;
}
%end

%hook BBPhoneVideoInfoFeaturesCell
- (bool)allowDownload {
    return YES;
}
%end

%hook BBPgcPadModelBangumiSeason  
- (bool)allow_download {
    return YES;
}
%end

%hook BBPgcPadCachingBangumiAndVideoViewController
- (bool)isAllowedShow1080PVideo {
    return YES;
}
%end

%hook BFCDownloadTaskManagerV2
- (bool)settingCouldDownload:(id)arg1 {
    return YES;
}
%end

%hook BBPgcPhoneBangumiRights
- (bool)allow_review {
    return YES;
}
- (bool)allow_download {
    return YES;
}
%end

%hook BBPgcPadBangumiRights
- (bool)allow_download {
    return YES;
}
%end

