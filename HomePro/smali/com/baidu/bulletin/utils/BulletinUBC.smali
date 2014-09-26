.class public Lcom/baidu/bulletin/utils/BulletinUBC;
.super Ljava/lang/Object;
.source "BulletinUBC.java"


# static fields
.field private static final D:Z = true

.field private static final HISTORY_WORDS_CLICK:B = 0x5bt

.field private static final METRIC_NETWORK_TYPE:J = 0x709L

.field private static final METRIC_SUBSCRIBE_READ_TIME:J = 0x70aL

.field private static final METRIC_TOUCH_EVENT:J = 0x708L

.field private static final MONITOR_CLICK:B = 0x4ct

.field public static final READNEWSINTERVALTIME:I = 0xb4

.field private static final STATE_CLOSE:B = 0x0t

.field private static final STATE_OPEN:B = 0x1t

.field private static final TAG:Ljava/lang/String; = null

.field public static final TAG_APP:B = 0x50t

.field private static final TAG_BAIKE_CLIENT_CLICK:B = 0x3ft

.field private static final TAG_BAIKE_CLIENT_DOWNLOAD_FAIL:B = 0x40t

.field private static final TAG_BEAUTYGIRL_IMAGE_DOWNLOAD:B = 0x6et

.field private static final TAG_BEAUTYGIRL_IMAGE_NEXT_FLIP:B = 0x70t

.field private static final TAG_BEAUTYGIRL_IMAGE_PREV_FLIP:B = 0x6ft

.field private static final TAG_BULLETIN_STATE:B = 0x49t

.field public static final TAG_CHNL_APP:Ljava/lang/String; = "settingapp"

.field public static final TAG_CHNL_ENTERTAINMENT_NEWS:Ljava/lang/String; = "settingentertainmentnews"

.field public static final TAG_CHNL_FINANCE_NEWS:Ljava/lang/String; = "settingfinancenews"

.field public static final TAG_CHNL_HEADLINE_NEWS:Ljava/lang/String; = "settingheadlinenews"

.field public static final TAG_CHNL_INTERNET_NEWS:Ljava/lang/String; = "settinginternetnews"

.field public static final TAG_CHNL_MILITARY_NEWS:Ljava/lang/String; = "settingmilitarynews"

.field public static final TAG_CHNL_MODELPHOTO_IMAGE:Ljava/lang/String; = "settingmodelphotoimage"

.field public static final TAG_CHNL_MUSIC:Ljava/lang/String; = "settingmusic"

.field private static final TAG_CHNL_OFF:Ljava/lang/String; = "off"

.field private static final TAG_CHNL_ON:Ljava/lang/String; = "on"

.field public static final TAG_CHNL_SELFBEAUTY_IMAGE:Ljava/lang/String; = "settingselfbeautyimage"

.field public static final TAG_CHNL_SEXYPHOTO_IMAGE:Ljava/lang/String; = "settingsexyphotoimage"

.field public static final TAG_CHNL_SPORT_NEWS:Ljava/lang/String; = "settingsportnews"

.field public static final TAG_CHNL_SUPERMODEL:Ljava/lang/String; = "settingsupermodelimage"

.field public static final TAG_CHNL_TECHNICAL_NEWS:Ljava/lang/String; = "settingtechnicalnews"

.field public static final TAG_CHNL_WOMEN_NEWS:Ljava/lang/String; = "settingwomennews"

.field private static final TAG_DETAIL_PAGE_CLICK:B = 0x4bt

.field public static final TAG_ENTERTAINMENT_NEWS:B = 0x3t

.field public static final TAG_FINANCE_NEWS:B = 0x5t

.field private static final TAG_FLIP_TO_BULLETIN:B = 0x4at

.field public static final TAG_HEADLINE_NEWS:B = 0x1t

.field public static final TAG_HISTORY:B = 0x5at

.field public static final TAG_INTERNET_NEWS:B = 0x8t

.field private static final TAG_MEIPAI_CLIENT_CLICK:B = 0x42t

.field private static final TAG_MEIPAI_CLIENT_DOWNLOAD_FAIL:B = 0x43t

.field public static final TAG_MILITARY_NEWS:B = 0x2t

.field public static final TAG_MODELPHOTO_IMAGE:B = 0xat

.field public static final TAG_MUSIC:B = 0x32t

.field private static final TAG_MUSIC_DIALOGE_BOX:B = 0x34t

.field private static final TAG_MUSIC_LOGIN_BOX:B = 0x35t

.field private static final TAG_MUSIC_UPLOADED:B = 0x36t

.field private static final TAG_MUSIC_UPLOAD_CLICK:B = 0x33t

.field private static final TAG_NETWORK_TYPE:B = 0x47t

.field private static final TAG_NEWS_CLIENT_CLICK:B = 0x3dt

.field private static final TAG_NEWS_CLIENT_DOWNLOAD_FAIL:B = 0x3et

.field private static final TAG_REFRESH_ICON:B = 0x48t

.field private static final TAG_REFRESH_NEW:B = 0x4dt

.field private static final TAG_SCAN_MORENEWS:B = 0x41t

.field public static final TAG_SELFBEAUTY_IMAGE:B = 0xbt

.field public static final TAG_SEXYPHOTO_IMAGE:B = 0x9t

.field private static final TAG_SHARE_TO_EMAIL:B = 0x69t

.field private static final TAG_SHARE_TO_QQ:B = 0x68t

.field private static final TAG_SHARE_TO_SINAWEIBO:B = 0x64t

.field private static final TAG_SHARE_TO_SOUHUWEIBO:B = 0x6at

.field private static final TAG_SHARE_TO_TENCENTFRIENDS:B = 0x66t

.field private static final TAG_SHARE_TO_TENCENTWEIBO:B = 0x67t

.field private static final TAG_SHARE_TO_WEIXIN:B = 0x65t

.field public static final TAG_SPORT_NEWS:B = 0x6t

.field public static final TAG_SUPERMODEL_IMAGE:B = 0xct

.field public static final TAG_TECHNICAL_NEWS:B = 0x4t

.field public static final TAG_WOMEN_NEWS:B = 0x7t

.field public static final TYPE_MOBILE:B = 0x4t

.field public static final TYPE_WIFI:B = 0x3t

.field private static UBC_NOEXIST:Z

.field private static appStateIntervalStatTime:I

.field private static appStateLastStatTime:I

.field private static chnlSubIntervalStatTime:I

.field private static chnlSubLastStatTime:I

.field private static mContext:Landroid/content/Context;

.field private static netTypeIntervalStatTime:I

.field private static netTypeLastStatTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x15180

    const/4 v3, 0x0

    .line 14
    const-class v1, Lcom/baidu/bulletin/utils/BulletinUBC;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    .line 171
    sput-boolean v3, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    .line 175
    :try_start_0
    const-string v1, "yi.ubc.MetricBuilder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    sput v3, Lcom/baidu/bulletin/utils/BulletinUBC;->appStateLastStatTime:I

    .line 262
    sput v4, Lcom/baidu/bulletin/utils/BulletinUBC;->appStateIntervalStatTime:I

    .line 280
    sput v3, Lcom/baidu/bulletin/utils/BulletinUBC;->netTypeLastStatTime:I

    .line 281
    const/16 v1, 0x3c

    sput v1, Lcom/baidu/bulletin/utils/BulletinUBC;->netTypeIntervalStatTime:I

    .line 330
    sput v3, Lcom/baidu/bulletin/utils/BulletinUBC;->chnlSubLastStatTime:I

    .line 331
    sput v4, Lcom/baidu/bulletin/utils/BulletinUBC;->chnlSubIntervalStatTime:I

    return-void

    .line 176
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    sget-object v1, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v2, "yi.ubc.MetricBuilder is not found >>>"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChannelIdToType(I)B
    .locals 1
    .parameter "channelId"

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, ubcChnlType:B
    sparse-switch p0, :sswitch_data_0

    .line 238
    :goto_0
    return v0

    .line 192
    :sswitch_0
    const/4 v0, 0x1

    .line 193
    goto :goto_0

    .line 195
    :sswitch_1
    const/4 v0, 0x2

    .line 196
    goto :goto_0

    .line 198
    :sswitch_2
    const/4 v0, 0x3

    .line 199
    goto :goto_0

    .line 201
    :sswitch_3
    const/4 v0, 0x4

    .line 202
    goto :goto_0

    .line 204
    :sswitch_4
    const/4 v0, 0x5

    .line 205
    goto :goto_0

    .line 207
    :sswitch_5
    const/4 v0, 0x6

    .line 208
    goto :goto_0

    .line 210
    :sswitch_6
    const/4 v0, 0x7

    .line 211
    goto :goto_0

    .line 213
    :sswitch_7
    const/16 v0, 0x8

    .line 214
    goto :goto_0

    .line 216
    :sswitch_8
    const/16 v0, 0x32

    .line 217
    goto :goto_0

    .line 219
    :sswitch_9
    const/16 v0, 0x50

    .line 220
    goto :goto_0

    .line 222
    :sswitch_a
    const/16 v0, 0x5a

    .line 223
    goto :goto_0

    .line 225
    :sswitch_b
    const/16 v0, 0x9

    .line 226
    goto :goto_0

    .line 228
    :sswitch_c
    const/16 v0, 0xa

    .line 229
    goto :goto_0

    .line 231
    :sswitch_d
    const/16 v0, 0xb

    .line 232
    goto :goto_0

    .line 234
    :sswitch_e
    const/16 v0, 0xc

    goto :goto_0

    .line 190
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x3e8 -> :sswitch_9
        0x7d0 -> :sswitch_8
        0xbb9 -> :sswitch_b
        0xbba -> :sswitch_c
        0xbbb -> :sswitch_d
        0xbbc -> :sswitch_e
        0xfa0 -> :sswitch_a
    .end sparse-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    .line 184
    return-void
.end method

.method public static statForBaiduNewsDownloadClick()V
    .locals 2

    .prologue
    .line 479
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 484
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for BAIDUNEWS client download click."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForBaiduNewsDownloadFail()V
    .locals 2

    .prologue
    .line 489
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    const/16 v0, 0x3e

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 494
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for download BAIDUNEWS client is failed."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForBaikeDownloadClick()V
    .locals 2

    .prologue
    .line 499
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const/16 v0, 0x3f

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 504
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for Baike client download click."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForBaikeDownloadFail()V
    .locals 2

    .prologue
    .line 509
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 514
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for download Baike client is failed."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForBeautyGirlImageDownloadClick()V
    .locals 2

    .prologue
    .line 619
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    const/16 v0, 0x6e

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 624
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for downloading beauty girl image."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForBeautyGirlImageNextFlip()V
    .locals 2

    .prologue
    .line 639
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    const/16 v0, 0x70

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 644
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for flipping to next beauty girl image."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForBeautyGirlImagePrevFlip()V
    .locals 2

    .prologue
    .line 629
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    const/16 v0, 0x6f

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 634
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for flipping to previous beauty girl image."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForChnlClick(B)V
    .locals 3
    .parameter "chnl"

    .prologue
    .line 441
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-static {p0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 445
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ubc for channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is clicked."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForChnlSubState()V
    .locals 6

    .prologue
    .line 334
    sget-boolean v2, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 418
    .local v0, chnlSubCurStatTime:I
    :cond_0
    :goto_0
    return-void

    .line 337
    .end local v0           #chnlSubCurStatTime:I
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 338
    .restart local v0       #chnlSubCurStatTime:I
    sget v2, Lcom/baidu/bulletin/utils/BulletinUBC;->chnlSubLastStatTime:I

    if-eqz v2, :cond_2

    sget v2, Lcom/baidu/bulletin/utils/BulletinUBC;->chnlSubLastStatTime:I

    sub-int v2, v0, v2

    sget v3, Lcom/baidu/bulletin/utils/BulletinUBC;->chnlSubIntervalStatTime:I

    if-le v2, v3, :cond_0

    .line 341
    :cond_2
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getSettingsController()Lcom/baidu/bulletin/ui/logic/SettingsController;

    move-result-object v1

    .line 344
    .local v1, settingsController:Lcom/baidu/bulletin/ui/logic/SettingsController;
    const-string v3, "settingheadlinenews"

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "on"

    :goto_1
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v3, "settingmilitarynews"

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "on"

    :goto_2
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v3, "settingentertainmentnews"

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "on"

    :goto_3
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v3, "settingtechnicalnews"

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "on"

    :goto_4
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v3, "settingfinancenews"

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "on"

    :goto_5
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v3, "settingsportnews"

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "on"

    :goto_6
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v3, "settingwomennews"

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "on"

    :goto_7
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v3, "settinginternetnews"

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "on"

    :goto_8
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v3, "settingmusic"

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "on"

    :goto_9
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v3, "settingapp"

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "on"

    :goto_a
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v3, "settingselfbeautyimage"

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "on"

    :goto_b
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v3, "settingmodelphotoimage"

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "on"

    :goto_c
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v3, "settingsupermodelimage"

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "on"

    :goto_d
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v3, "settingsexyphotoimage"

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/SettingsController;->getChannelListItem(I)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "on"

    :goto_e
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sput v0, Lcom/baidu/bulletin/utils/BulletinUBC;->chnlSubLastStatTime:I

    goto/16 :goto_0

    .line 344
    :cond_3
    const-string v2, "off"

    goto/16 :goto_1

    .line 350
    :cond_4
    const-string v2, "off"

    goto/16 :goto_2

    .line 355
    :cond_5
    const-string v2, "off"

    goto/16 :goto_3

    .line 360
    :cond_6
    const-string v2, "off"

    goto/16 :goto_4

    .line 365
    :cond_7
    const-string v2, "off"

    goto/16 :goto_5

    .line 370
    :cond_8
    const-string v2, "off"

    goto/16 :goto_6

    .line 375
    :cond_9
    const-string v2, "off"

    goto/16 :goto_7

    .line 380
    :cond_a
    const-string v2, "off"

    goto :goto_8

    .line 385
    :cond_b
    const-string v2, "off"

    goto :goto_9

    .line 390
    :cond_c
    const-string v2, "off"

    goto :goto_a

    .line 395
    :cond_d
    const-string v2, "off"

    goto :goto_b

    .line 400
    :cond_e
    const-string v2, "off"

    goto :goto_c

    .line 405
    :cond_f
    const-string v2, "off"

    goto :goto_d

    .line 410
    :cond_10
    const-string v2, "off"

    goto :goto_e
.end method

.method public static statForDetailPageClick()V
    .locals 2

    .prologue
    .line 431
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    const/16 v0, 0x4b

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 436
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for click any detail page."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForFlipToBulletin()V
    .locals 2

    .prologue
    .line 422
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    const/16 v0, 0x4a

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 426
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for flip to bulletin"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForHistoryWordsClick()V
    .locals 2

    .prologue
    .line 460
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    const/16 v0, 0x5b

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 465
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for clicked words in history."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForMeiPaiDownloadClick()V
    .locals 2

    .prologue
    .line 519
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    const/16 v0, 0x42

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 524
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for MeiPai client download click."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForMeiPaiDownloadFail()V
    .locals 2

    .prologue
    .line 529
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    const/16 v0, 0x43

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 534
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for download MeiPai client is failed."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForMonitorClick()V
    .locals 2

    .prologue
    .line 469
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const/16 v0, 0x4c

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 474
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for clicked monitor on home."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForMusicDialogBox()V
    .locals 2

    .prologue
    .line 314
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const/16 v0, 0x34

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 318
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for music dialog box."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForMusicLoginBox()V
    .locals 2

    .prologue
    .line 305
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    const/16 v0, 0x35

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 309
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for music login box."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForMusicUpload()V
    .locals 2

    .prologue
    .line 296
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    const/16 v0, 0x36

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 300
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for music uploaded."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForMusicUploadClick()V
    .locals 2

    .prologue
    .line 323
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const/16 v0, 0x33

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 327
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for music upload click."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForNetConnType(B)V
    .locals 5
    .parameter "type"

    .prologue
    .line 283
    sget-boolean v1, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 287
    .local v0, curStatTime:I
    sget v1, Lcom/baidu/bulletin/utils/BulletinUBC;->netTypeLastStatTime:I

    sub-int v1, v0, v1

    sget v2, Lcom/baidu/bulletin/utils/BulletinUBC;->netTypeIntervalStatTime:I

    if-lt v1, v2, :cond_0

    .line 288
    const/16 v1, 0x47

    invoke-static {v1, p0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitNetworkMetric(BB)V

    .line 289
    sget-object v1, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ubc for network connection type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sput v0, Lcom/baidu/bulletin/utils/BulletinUBC;->netTypeLastStatTime:I

    goto :goto_0
.end method

.method public static statForOpenOrCloseApp()V
    .locals 6

    .prologue
    .line 264
    sget-boolean v2, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 277
    .local v0, curStatTime:I
    :cond_0
    :goto_0
    return-void

    .line 267
    .end local v0           #curStatTime:I
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 268
    .restart local v0       #curStatTime:I
    sget v2, Lcom/baidu/bulletin/utils/BulletinUBC;->appStateLastStatTime:I

    sub-int v2, v0, v2

    sget v3, Lcom/baidu/bulletin/utils/BulletinUBC;->appStateIntervalStatTime:I

    if-lt v2, v3, :cond_0

    .line 269
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isBulletinEnabled()Z

    move-result v1

    .line 271
    .local v1, isOpen:Z
    const/16 v3, 0x49

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v3, v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitNetworkMetric(BB)V

    .line 274
    sget-object v2, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ubc for opend app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sput v0, Lcom/baidu/bulletin/utils/BulletinUBC;->appStateLastStatTime:I

    goto :goto_0

    .line 271
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static statForReadNewsIntervalTime(BI)V
    .locals 3
    .parameter "chnl"
    .parameter "interval"

    .prologue
    .line 451
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ubc for read news channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " interval time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForRefreshIcon()V
    .locals 2

    .prologue
    .line 243
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const/16 v0, 0x48

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 247
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for refresh icon."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForRefreshNew()V
    .locals 2

    .prologue
    .line 252
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    const/16 v0, 0x4d

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 257
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for refresh new."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForScanMoreNews()V
    .locals 2

    .prologue
    .line 539
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    const/16 v0, 0x41

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 544
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for scanning more news in searchbox."

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForShareToEmail()V
    .locals 2

    .prologue
    .line 599
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 604
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for sharing to email"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForShareToFriends()V
    .locals 2

    .prologue
    .line 569
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    const/16 v0, 0x66

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 574
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for sharing to friends"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForShareToQQ()V
    .locals 2

    .prologue
    .line 589
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    const/16 v0, 0x68

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 594
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for sharing to qq"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForShareToSinaWeibo()V
    .locals 2

    .prologue
    .line 549
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 554
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for sharing to sinaweibo"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForShareToSouhuWeibo()V
    .locals 2

    .prologue
    .line 609
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 614
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for sharing to Souhu weibo"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForShareToTencentWeibo()V
    .locals 2

    .prologue
    .line 579
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    const/16 v0, 0x67

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 584
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for sharing to tencent weibo"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForShareToWeiXin()V
    .locals 2

    .prologue
    .line 559
    sget-boolean v0, Lcom/baidu/bulletin/utils/BulletinUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitTouchEventMetric(B)V

    .line 564
    sget-object v0, Lcom/baidu/bulletin/utils/BulletinUBC;->TAG:Ljava/lang/String;

    const-string v1, "ubc for sharing to weixin"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static submitNetworkMetric(BB)V
    .locals 7
    .parameter "tag"
    .parameter "value"

    .prologue
    const-wide/16 v5, 0x709

    .line 664
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 665
    .local v0, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, v5, v6}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 667
    invoke-virtual {v0, p0}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 668
    invoke-virtual {v0, p1}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 669
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendSHORT(S)Lyi/ubc/MetricBuilder;

    .line 670
    sget-object v1, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v6, v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    .line 671
    return-void
.end method

.method private static submitSubscribeAndReadTimeMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "tag"
    .parameter "value"

    .prologue
    const-wide/16 v5, 0x70a

    .line 677
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 678
    .local v0, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, v5, v6}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 680
    invoke-virtual {v0, p0}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 681
    invoke-virtual {v0, p1}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 682
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendSHORT(S)Lyi/ubc/MetricBuilder;

    .line 683
    sget-object v1, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v6, v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    .line 684
    return-void
.end method

.method private static submitTouchEventMetric(B)V
    .locals 7
    .parameter "tag"

    .prologue
    const-wide/16 v5, 0x708

    .line 651
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 652
    .local v0, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, v5, v6}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 654
    invoke-virtual {v0, p0}, Lyi/ubc/MetricBuilder;->appendCHAR(B)Lyi/ubc/MetricBuilder;

    .line 655
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendSHORT(S)Lyi/ubc/MetricBuilder;

    .line 656
    sget-object v1, Lcom/baidu/bulletin/utils/BulletinUBC;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v6, v0}, Lcom/baidu/bulletin/utils/BulletinUBC;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    .line 657
    return-void
.end method

.method private static submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "data"

    .prologue
    .line 692
    return-void
.end method
