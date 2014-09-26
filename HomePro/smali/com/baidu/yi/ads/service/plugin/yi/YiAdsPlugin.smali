.class public Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;
.super Ljava/lang/Object;
.source "YiAdsPlugin.java"

# interfaces
.implements Lcom/baidu/yi/ads/service/plugin/AdPlugin;


# instance fields
.field private mAdService:Lcom/baidu/yi/ads/service/AdService;

.field mCurrentAdImg:Lcom/baidu/yi/ads/service/plugin/AdImage;

.field mReqType:I

.field private mUnbindRequested:Z

.field mYiAdReq:Lcom/baidu/opservice/aidl/AdReq;

.field private mYiAdService:Lcom/baidu/opservice/aidl/IOpServiceAidl;

.field private mYiAdServiceCb:Lcom/baidu/opservice/aidl/IOpServiceCallbackAidl;

.field private mYiAdServiceConnection:Landroid/content/ServiceConnection;

.field mYiAdsRst:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/ads/service/AdService;I)V
    .locals 4
    .parameter "service"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdService:Lcom/baidu/opservice/aidl/IOpServiceAidl;

    .line 39
    iput-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdsRst:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;

    .line 40
    iput v3, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mReqType:I

    .line 44
    iput-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mCurrentAdImg:Lcom/baidu/yi/ads/service/plugin/AdImage;

    .line 61
    new-instance v2, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$1;

    invoke-direct {v2, p0}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$1;-><init>(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;)V

    iput-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdServiceConnection:Landroid/content/ServiceConnection;

    .line 83
    new-instance v2, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$2;

    invoke-direct {v2, p0}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$2;-><init>(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;)V

    iput-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdServiceCb:Lcom/baidu/opservice/aidl/IOpServiceCallbackAidl;

    .line 52
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;

    .line 53
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mUnbindRequested:Z

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.opservice.get"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, serviceIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v2, v3}, Lcom/baidu/yi/ads/service/AdService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 59
    .local v0, ret:Z
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;Lcom/baidu/opservice/aidl/IOpServiceAidl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdService:Lcom/baidu/opservice/aidl/IOpServiceAidl;

    return-void
.end method

.method static synthetic access$1(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mUnbindRequested:Z

    return-void
.end method

.method static synthetic access$2(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->doRequest()V

    return-void
.end method

.method static synthetic access$3(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;Lcom/baidu/opservice/aidl/AdRsp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->handleErrorRsp(Lcom/baidu/opservice/aidl/AdRsp;)V

    return-void
.end method

.method static synthetic access$4(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;Lcom/baidu/opservice/aidl/AdRsp;)Lcom/baidu/yi/ads/Ad;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->getCachedAd(Lcom/baidu/opservice/aidl/AdRsp;)Lcom/baidu/yi/ads/Ad;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;)Lcom/baidu/yi/ads/service/AdService;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;

    return-object v0
.end method

.method private createTextAd(Lcom/baidu/opservice/aidl/AdRsp;)Lcom/baidu/yi/ads/Ad;
    .locals 6
    .parameter "item"

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, ad:Lcom/baidu/yi/ads/Ad;
    iget-object v3, p1, Lcom/baidu/opservice/aidl/AdRsp;->title:Ljava/lang/String;

    .line 287
    .local v3, title:Ljava/lang/String;
    iget-object v1, p1, Lcom/baidu/opservice/aidl/AdRsp;->desc:Ljava/lang/String;

    .line 289
    .local v1, desc:Ljava/lang/String;
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 290
    const/4 v4, 0x0

    .line 305
    :goto_0
    return-object v4

    .line 293
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Text ad. Title="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Desc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/baidu/yi/ads/Ad;

    .end local v0           #ad:Lcom/baidu/yi/ads/Ad;
    invoke-direct {v0}, Lcom/baidu/yi/ads/Ad;-><init>()V

    .line 295
    .restart local v0       #ad:Lcom/baidu/yi/ads/Ad;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/baidu/yi/ads/Ad;->setContentType(I)V

    .line 296
    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Lcom/baidu/yi/ads/Ad;->setMimeType(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, v3}, Lcom/baidu/yi/ads/Ad;->setTitle(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/Ad;->setDesc(Ljava/lang/String;)V

    .line 301
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 302
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/yi/ads/Ad;->setText(Ljava/lang/String;)V

    move-object v4, v0

    .line 305
    goto :goto_0
.end method

.method private doRequest()V
    .locals 4

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdReq:Lcom/baidu/opservice/aidl/AdReq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 267
    :try_start_1
    iget-object v1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdService:Lcom/baidu/opservice/aidl/IOpServiceAidl;

    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdReq:Lcom/baidu/opservice/aidl/AdReq;

    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdServiceCb:Lcom/baidu/opservice/aidl/IOpServiceCallbackAidl;

    invoke-interface {v1, v2, v3}, Lcom/baidu/opservice/aidl/IOpServiceAidl;->getNextAd(Lcom/baidu/opservice/aidl/AdReq;Lcom/baidu/opservice/aidl/IOpServiceCallbackAidl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 275
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 264
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getCachedAd(Lcom/baidu/opservice/aidl/AdRsp;)Lcom/baidu/yi/ads/Ad;
    .locals 13
    .parameter "adRsp"

    .prologue
    const/4 v12, 0x1

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, ad:Lcom/baidu/yi/ads/Ad;
    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->imgUri:Ljava/lang/String;

    iget-object v11, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;

    invoke-direct {p0, v10, v11}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->getImage(Ljava/lang/String;Landroid/content/Context;)Lcom/baidu/yi/ads/service/plugin/AdImage;

    move-result-object v2

    .line 139
    .local v2, adImage:Lcom/baidu/yi/ads/service/plugin/AdImage;
    if-eqz v2, :cond_b

    .line 140
    iget v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->materialType:I

    packed-switch v10, :pswitch_data_0

    .line 149
    const/4 v10, 0x0

    .line 226
    :goto_0
    return-object v10

    .line 142
    :pswitch_0
    invoke-virtual {v2, v12}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setContentType(I)V

    .line 152
    :goto_1
    invoke-virtual {v2}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 153
    .local v3, b:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 154
    .local v9, w:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 156
    .local v5, h:I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Image width = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 158
    if-gt v9, v12, :cond_0

    if-le v5, v12, :cond_6

    .line 159
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v6, sb:Ljava/lang/StringBuffer;
    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->title:Ljava/lang/String;

    if-eqz v10, :cond_1

    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->title:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 162
    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->title:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setTitle(Ljava/lang/String;)V

    .line 163
    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->title:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_1
    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->desc:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->desc:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 166
    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->desc:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setDesc(Ljava/lang/String;)V

    .line 167
    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->desc:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_3

    .line 171
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, text:Ljava/lang/String;
    invoke-virtual {v2, v7}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setText(Ljava/lang/String;)V

    .line 175
    .end local v7           #text:Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/baidu/yi/ads/Ad;

    .end local v1           #ad:Lcom/baidu/yi/ads/Ad;
    invoke-direct {v1}, Lcom/baidu/yi/ads/Ad;-><init>()V

    .line 178
    .restart local v1       #ad:Lcom/baidu/yi/ads/Ad;
    invoke-virtual {v2}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getContentType()I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/baidu/yi/ads/Ad;->setContentType(I)V

    .line 180
    invoke-virtual {v2}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/baidu/yi/ads/Ad;->setImage(Landroid/graphics/Bitmap;)V

    .line 182
    invoke-virtual {v2}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getText()Ljava/lang/String;

    move-result-object v7

    .line 184
    .restart local v7       #text:Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 185
    invoke-virtual {v1, v7}, Lcom/baidu/yi/ads/Ad;->setText(Ljava/lang/String;)V

    .line 186
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Mixed ad. Text = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 188
    :cond_4
    invoke-virtual {v2}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, title:Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 190
    invoke-virtual {v1, v8}, Lcom/baidu/yi/ads/Ad;->setTitle(Ljava/lang/String;)V

    .line 191
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Mixed ad. Title = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 193
    :cond_5
    invoke-virtual {v2}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getDesc()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, desc:Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 195
    invoke-virtual {v1, v4}, Lcom/baidu/yi/ads/Ad;->setDesc(Ljava/lang/String;)V

    .line 196
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Mixed ad. Desc = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 204
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v4           #desc:Ljava/lang/String;
    .end local v5           #h:I
    .end local v6           #sb:Ljava/lang/StringBuffer;
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    .end local v9           #w:I
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 205
    iget v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->showtime:I

    invoke-virtual {v1, v10}, Lcom/baidu/yi/ads/Ad;->setShowTime(I)V

    .line 206
    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->ad_id:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/baidu/yi/ads/Ad;->setAdId(Ljava/lang/String;)V

    .line 209
    :cond_7
    if-eqz v1, :cond_9

    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->curl:Ljava/lang/String;

    if-eqz v10, :cond_9

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Ad action type = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p1, Lcom/baidu/opservice/aidl/AdRsp;->act:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 211
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Ad action curl = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p1, Lcom/baidu/opservice/aidl/AdRsp;->curl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 212
    new-instance v0, Lcom/baidu/yi/ads/Ad$Action;

    iget v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->act:I

    iget-object v11, p1, Lcom/baidu/opservice/aidl/AdRsp;->curl:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Lcom/baidu/yi/ads/Ad$Action;-><init>(ILjava/lang/String;)V

    .line 214
    .local v0, a:Lcom/baidu/yi/ads/Ad$Action;
    iget v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->act:I

    const/16 v11, 0x20

    if-ne v10, v11, :cond_8

    .line 215
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Ad action phone number = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p1, Lcom/baidu/opservice/aidl/AdRsp;->phone:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 216
    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->phone:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/baidu/yi/ads/Ad$Action;->setDesc(Ljava/lang/String;)V

    .line 218
    :cond_8
    invoke-virtual {v1, v0}, Lcom/baidu/yi/ads/Ad;->addAction(Lcom/baidu/yi/ads/Ad$Action;)V

    .line 221
    .end local v0           #a:Lcom/baidu/yi/ads/Ad$Action;
    :cond_9
    if-eqz v1, :cond_a

    iget-object v10, p1, Lcom/baidu/opservice/aidl/AdRsp;->clklogurl:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 223
    new-instance v0, Lcom/baidu/yi/ads/Ad$Action;

    const/16 v10, 0x80

    iget-object v11, p1, Lcom/baidu/opservice/aidl/AdRsp;->clklogurl:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Lcom/baidu/yi/ads/Ad$Action;-><init>(ILjava/lang/String;)V

    .line 224
    .restart local v0       #a:Lcom/baidu/yi/ads/Ad$Action;
    invoke-virtual {v1, v0}, Lcom/baidu/yi/ads/Ad;->addAction(Lcom/baidu/yi/ads/Ad$Action;)V

    .end local v0           #a:Lcom/baidu/yi/ads/Ad$Action;
    :cond_a
    move-object v10, v1

    .line 226
    goto/16 :goto_0

    .line 145
    :pswitch_1
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setContentType(I)V

    goto/16 :goto_1

    .line 200
    :cond_b
    const-string v10, "No image on ad"

    invoke-static {v10}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->createTextAd(Lcom/baidu/opservice/aidl/AdRsp;)Lcom/baidu/yi/ads/Ad;

    move-result-object v1

    goto/16 :goto_2

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getImage(Ljava/lang/String;Landroid/content/Context;)Lcom/baidu/yi/ads/service/plugin/AdImage;
    .locals 8
    .parameter "urlStr"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 309
    const/4 v4, 0x0

    .line 310
    .local v4, isBmCreated:Z
    if-nez p1, :cond_0

    .line 345
    :goto_0
    return-object v5

    .line 315
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 317
    .local v2, imgUri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 319
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 322
    iget-object v6, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mCurrentAdImg:Lcom/baidu/yi/ads/service/plugin/AdImage;

    if-eqz v6, :cond_3

    .line 323
    iget-object v6, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mCurrentAdImg:Lcom/baidu/yi/ads/service/plugin/AdImage;

    invoke-virtual {v6, v0}, Lcom/baidu/yi/ads/service/plugin/AdImage;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 327
    :goto_1
    const/4 v4, 0x1

    .line 339
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #imgUri:Landroid/net/Uri;
    .end local v3           #is:Ljava/io/InputStream;
    :goto_2
    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mCurrentAdImg:Lcom/baidu/yi/ads/service/plugin/AdImage;

    if-eqz v6, :cond_2

    .line 340
    iget-object v6, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mCurrentAdImg:Lcom/baidu/yi/ads/service/plugin/AdImage;

    invoke-virtual {v6}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 341
    iget-object v6, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mCurrentAdImg:Lcom/baidu/yi/ads/service/plugin/AdImage;

    invoke-virtual {v6}, Lcom/baidu/yi/ads/service/plugin/AdImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 343
    :cond_1
    iput-object v5, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mCurrentAdImg:Lcom/baidu/yi/ads/service/plugin/AdImage;

    .line 345
    :cond_2
    iget-object v5, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mCurrentAdImg:Lcom/baidu/yi/ads/service/plugin/AdImage;

    goto :goto_0

    .line 325
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #imgUri:Landroid/net/Uri;
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_3
    :try_start_1
    new-instance v6, Lcom/baidu/yi/ads/service/plugin/AdImage;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/baidu/yi/ads/service/plugin/AdImage;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mCurrentAdImg:Lcom/baidu/yi/ads/service/plugin/AdImage;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 331
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #imgUri:Landroid/net/Uri;
    .end local v3           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 332
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    goto :goto_2

    .line 329
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #imgUri:Landroid/net/Uri;
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_4
    :try_start_2
    const-string v6, "Bitmap is null"

    invoke-static {v6}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 333
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #imgUri:Landroid/net/Uri;
    .end local v3           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 334
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "Error on network connection."

    invoke-static {v6}, Lcom/baidu/yi/ads/service/AdService;->logE(Ljava/lang/String;)V

    goto :goto_2

    .line 335
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 337
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v6, "Bad image URL."

    invoke-static {v6}, Lcom/baidu/yi/ads/service/AdService;->logE(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleErrorRsp(Lcom/baidu/opservice/aidl/AdRsp;)V
    .locals 3
    .parameter "adRsp"

    .prologue
    .line 108
    iget v1, p1, Lcom/baidu/opservice/aidl/AdRsp;->interval:I

    if-lez v1, :cond_0

    .line 109
    new-instance v0, Lcom/baidu/yi/ads/Ad;

    invoke-direct {v0}, Lcom/baidu/yi/ads/Ad;-><init>()V

    .line 110
    .local v0, errorAd:Lcom/baidu/yi/ads/Ad;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/Ad;->setContentType(I)V

    .line 111
    iget v1, p1, Lcom/baidu/opservice/aidl/AdRsp;->interval:I

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/Ad;->setShowTime(I)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handle request interval, interval = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/baidu/opservice/aidl/AdRsp;->interval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;

    invoke-virtual {v1, v0}, Lcom/baidu/yi/ads/service/AdService;->onAdClientNotice(Lcom/baidu/yi/ads/Ad;)V

    .line 117
    .end local v0           #errorAd:Lcom/baidu/yi/ads/Ad;
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/yi/ads/service/AdService;->onAdClientNotice(Lcom/baidu/yi/ads/Ad;)V

    goto :goto_0
.end method


# virtual methods
.method public getAd(Lcom/baidu/yi/ads/service/plugin/Raw$RawRequest;III)Lcom/baidu/yi/ads/Ad;
    .locals 6
    .parameter "params"
    .parameter "limited"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 234
    if-eqz p1, :cond_0

    .line 235
    instance-of v2, p1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    if-nez v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-object v5

    :cond_1
    move-object v0, p1

    .line 239
    check-cast v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    .line 240
    .local v0, req:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;
    new-instance v2, Lcom/baidu/opservice/aidl/AdReq;

    invoke-direct {v2}, Lcom/baidu/opservice/aidl/AdReq;-><init>()V

    iput-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdReq:Lcom/baidu/opservice/aidl/AdReq;

    .line 241
    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdReq:Lcom/baidu/opservice/aidl/AdReq;

    iget-object v3, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->appid:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/opservice/aidl/AdReq;->appId:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdReq:Lcom/baidu/opservice/aidl/AdReq;

    iget-object v3, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->q:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/opservice/aidl/AdReq;->q:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdReq:Lcom/baidu/opservice/aidl/AdReq;

    iget-object v3, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->channelId:Ljava/lang/String;

    iput-object v3, v2, Lcom/baidu/opservice/aidl/AdReq;->channelId:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdReq:Lcom/baidu/opservice/aidl/AdReq;

    iput p4, v2, Lcom/baidu/opservice/aidl/AdReq;->imgHeight:I

    .line 245
    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdReq:Lcom/baidu/opservice/aidl/AdReq;

    iput p3, v2, Lcom/baidu/opservice/aidl/AdReq;->imgWidth:I

    .line 246
    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdReq:Lcom/baidu/opservice/aidl/AdReq;

    iget v3, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->at:I

    iput v3, v2, Lcom/baidu/opservice/aidl/AdReq;->mateiralType:I

    .line 248
    iget v2, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->at:I

    iput v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mReqType:I

    .line 250
    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdService:Lcom/baidu/opservice/aidl/IOpServiceAidl;

    if-eqz v2, :cond_2

    .line 251
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->doRequest()V

    goto :goto_0

    .line 253
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.opservice.get"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, serviceIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;

    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/baidu/yi/ads/service/AdService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public releaseResources()V
    .locals 2

    .prologue
    .line 123
    monitor-enter p0

    .line 124
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdReq:Lcom/baidu/opservice/aidl/AdReq;

    .line 125
    iget-boolean v0, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mUnbindRequested:Z

    if-nez v0, :cond_0

    .line 126
    const-string v0, "Requesting Yi ad service unbinding"

    invoke-static {v0}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;

    iget-object v1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/service/AdService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdService:Lcom/baidu/opservice/aidl/IOpServiceAidl;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mUnbindRequested:Z

    .line 123
    :cond_0
    monitor-exit p0

    .line 132
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
