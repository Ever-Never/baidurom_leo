.class Lcom/baidu/yi/ads/AdServiceConnector;
.super Ljava/lang/Object;
.source "AdServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;,
        Lcom/baidu/yi/ads/AdServiceConnector$Operation;
    }
.end annotation


# static fields
.field private static final AD_SERVICE_ACTION_NAME:Ljava/lang/String; = "com.baidu.yi.ads.service.IAdService"


# instance fields
.field private mAd:Lcom/baidu/yi/ads/Ad;

.field private mAdRequestListener:Lcom/baidu/yi/ads/service/IAdRequestListener;

.field private mAdService:Lcom/baidu/yi/ads/service/IAdService;

.field private mAdView:Lcom/baidu/yi/ads/AdView;

.field private mBindRequested:Z

.field private mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/baidu/yi/ads/AdServiceConnector$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceAvailable:Z

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mUnbindRequested:Z


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Lcom/baidu/yi/ads/AdServiceConnector$1;

    invoke-direct {v0, p0}, Lcom/baidu/yi/ads/AdServiceConnector$1;-><init>(Lcom/baidu/yi/ads/AdServiceConnector;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mServiceConn:Landroid/content/ServiceConnection;

    .line 182
    new-instance v0, Lcom/baidu/yi/ads/AdServiceConnector$2;

    invoke-direct {v0, p0}, Lcom/baidu/yi/ads/AdServiceConnector$2;-><init>(Lcom/baidu/yi/ads/AdServiceConnector;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdRequestListener:Lcom/baidu/yi/ads/service/IAdRequestListener;

    .line 197
    iput-object p1, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdView:Lcom/baidu/yi/ads/AdView;

    .line 198
    iput-boolean v1, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mBindRequested:Z

    .line 199
    iput-boolean v1, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mUnbindRequested:Z

    .line 200
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdServiceConnector;->bindService()V

    .line 201
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 202
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/ads/AdServiceConnector;Lcom/baidu/yi/ads/service/IAdService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdService:Lcom/baidu/yi/ads/service/IAdService;

    return-void
.end method

.method static synthetic access$1(Lcom/baidu/yi/ads/AdServiceConnector;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mUnbindRequested:Z

    return-void
.end method

.method static synthetic access$2(Lcom/baidu/yi/ads/AdServiceConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdServiceConnector;->checkQueue()V

    return-void
.end method

.method static synthetic access$3(Lcom/baidu/yi/ads/AdServiceConnector;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mBindRequested:Z

    return-void
.end method

.method static synthetic access$4(Lcom/baidu/yi/ads/AdServiceConnector;Lcom/baidu/yi/ads/Ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAd:Lcom/baidu/yi/ads/Ad;

    return-void
.end method

.method static synthetic access$5(Lcom/baidu/yi/ads/AdServiceConnector;)Lcom/baidu/yi/ads/AdView;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdView:Lcom/baidu/yi/ads/AdView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/baidu/yi/ads/AdServiceConnector;)Lcom/baidu/yi/ads/Ad;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAd:Lcom/baidu/yi/ads/Ad;

    return-object v0
.end method

.method private bindService()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 363
    iget-boolean v2, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mBindRequested:Z

    if-nez v2, :cond_0

    .line 364
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.yi.ads.service.IAdService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "Requesting service binding"

    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdView:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v2}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 367
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mServiceAvailable:Z

    .line 368
    iget-boolean v2, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mServiceAvailable:Z

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdView:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v2}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 370
    iput-boolean v3, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mBindRequested:Z

    .line 373
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 367
    .restart local v0       #cn:Landroid/content/ComponentName;
    .restart local v1       #serviceIntent:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkQueue()V
    .locals 6

    .prologue
    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checking queue. Size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/yi/ads/AdServiceConnector$Operation;

    .line 381
    .local v1, op:Lcom/baidu/yi/ads/AdServiceConnector$Operation;
    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v1}, Lcom/baidu/yi/ads/AdServiceConnector$Operation;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 384
    :pswitch_0
    invoke-virtual {v1}, Lcom/baidu/yi/ads/AdServiceConnector$Operation;->getParameter()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;

    .line 385
    .local v2, p:Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;
    invoke-virtual {v2}, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;->getAdReqParams()Lcom/baidu/yi/ads/service/AdSpaceParams;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;->getHeight()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/baidu/yi/ads/AdServiceConnector;->requestAd(Lcom/baidu/yi/ads/service/AdSpaceParams;II)V

    goto :goto_0

    .line 388
    .end local v2           #p:Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;
    :pswitch_1
    invoke-virtual {v1}, Lcom/baidu/yi/ads/AdServiceConnector$Operation;->getParameter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/Ad$Action;

    .line 389
    .local v0, action:Lcom/baidu/yi/ads/Ad$Action;
    invoke-virtual {p0, v0}, Lcom/baidu/yi/ads/AdServiceConnector;->executeAction(Lcom/baidu/yi/ads/Ad$Action;)V

    goto :goto_0

    .line 392
    .end local v0           #action:Lcom/baidu/yi/ads/Ad$Action;
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdServiceConnector;->requestAdDisplayProperties()V

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method doAction(Lcom/baidu/yi/ads/Ad$Action;)V
    .locals 6
    .parameter "act"

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 273
    .local v1, executed:Z
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v2, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdService:Lcom/baidu/yi/ads/service/IAdService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 275
    const/4 v1, 0x1

    .line 277
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad$Action;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdService:Lcom/baidu/yi/ads/service/IAdService;

    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad$Action;->getType()I

    move-result v3

    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad$Action;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad$Action;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/baidu/yi/ads/service/IAdService;->executeAction(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    if-eqz v1, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdServiceConnector;->checkQueue()V

    .line 290
    :goto_1
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "Exception executing action"

    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/baidu/yi/ads/AdServiceConnector$Operation;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p1}, Lcom/baidu/yi/ads/AdServiceConnector$Operation;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 288
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdServiceConnector;->bindService()V

    goto :goto_1
.end method

.method executeAction(Lcom/baidu/yi/ads/Ad$Action;)V
    .locals 5
    .parameter "act"

    .prologue
    .line 249
    if-eqz p1, :cond_1

    .line 250
    invoke-virtual {p0, p1}, Lcom/baidu/yi/ads/AdServiceConnector;->doAction(Lcom/baidu/yi/ads/Ad$Action;)V

    .line 269
    :cond_0
    return-void

    .line 254
    :cond_1
    iget-object v3, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAd:Lcom/baidu/yi/ads/Ad;

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAd:Lcom/baidu/yi/ads/Ad;

    invoke-virtual {v3}, Lcom/baidu/yi/ads/Ad;->getActions()Ljava/util/Vector;

    move-result-object v1

    .line 257
    .local v1, actions:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/baidu/yi/ads/Ad$Action;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 258
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 259
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/Ad$Action;

    .line 260
    .local v0, action:Lcom/baidu/yi/ads/Ad$Action;
    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {v0}, Lcom/baidu/yi/ads/Ad$Action;->getType()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_3

    .line 258
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {p0, v0}, Lcom/baidu/yi/ads/AdServiceConnector;->doAction(Lcom/baidu/yi/ads/Ad$Action;)V

    goto :goto_1
.end method

.method getCurrentAd()Lcom/baidu/yi/ads/Ad;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAd:Lcom/baidu/yi/ads/Ad;

    return-object v0
.end method

.method getState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdServiceConnector;->releaseResources()V

    .line 335
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAd:Lcom/baidu/yi/ads/Ad;

    return-object v0
.end method

.method isAdFrameworkAvailable()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mServiceAvailable:Z

    return v0
.end method

.method releaseResources()V
    .locals 2

    .prologue
    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 237
    iget-boolean v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mUnbindRequested:Z

    if-nez v0, :cond_0

    .line 238
    const-string v0, "Requesting service unbinding"

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdView:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mUnbindRequested:Z

    .line 235
    :cond_0
    monitor-exit p0

    .line 243
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method requestAd(Lcom/baidu/yi/ads/service/AdSpaceParams;II)V
    .locals 6
    .parameter "params"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, executed:Z
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdService:Lcom/baidu/yi/ads/service/IAdService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 213
    const/4 v1, 0x1

    .line 215
    :try_start_1
    iget-object v3, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdService:Lcom/baidu/yi/ads/service/IAdService;

    iget-object v4, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdRequestListener:Lcom/baidu/yi/ads/service/IAdRequestListener;

    invoke-interface {v3, p1, v4, p2, p3}, Lcom/baidu/yi/ads/service/IAdService;->getAd(Lcom/baidu/yi/ads/service/AdSpaceParams;Lcom/baidu/yi/ads/service/IAdRequestListener;II)V

    .line 216
    const-string v3, "Ad requested to service"

    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    if-eqz v1, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdServiceConnector;->checkQueue()V

    .line 229
    :goto_1
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "Exception getting ad "

    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 225
    :cond_1
    new-instance v2, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;

    invoke-direct {v2, p1, p2, p3}, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;-><init>(Lcom/baidu/yi/ads/service/AdSpaceParams;II)V

    .line 226
    .local v2, p:Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;
    iget-object v3, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v4, Lcom/baidu/yi/ads/AdServiceConnector$Operation;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Lcom/baidu/yi/ads/AdServiceConnector$Operation;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 227
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdServiceConnector;->bindService()V

    goto :goto_1
.end method

.method requestAdDisplayProperties()V
    .locals 7

    .prologue
    .line 305
    const-string v3, "Background requested"

    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 306
    const/4 v2, 0x0

    .line 307
    .local v2, executed:Z
    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v3, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdService:Lcom/baidu/yi/ads/service/IAdService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 309
    const/4 v2, 0x1

    .line 311
    :try_start_1
    iget-object v3, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdService:Lcom/baidu/yi/ads/service/IAdService;

    invoke-interface {v3}, Lcom/baidu/yi/ads/service/IAdService;->getAdViewBackground()Lcom/baidu/yi/ads/AdViewBackground;

    move-result-object v0

    .line 313
    .local v0, bkg:Lcom/baidu/yi/ads/AdViewBackground;
    const-string v3, "Display info requested from service"

    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 314
    iget-object v3, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdView:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v3, v0}, Lcom/baidu/yi/ads/AdView;->setAdDisplayProperties(Lcom/baidu/yi/ads/AdViewBackground;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 307
    .end local v0           #bkg:Lcom/baidu/yi/ads/AdViewBackground;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    if-eqz v2, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdServiceConnector;->checkQueue()V

    .line 325
    :goto_1
    return-void

    .line 315
    :catch_0
    move-exception v1

    .line 316
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "Exception getting background"

    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 323
    :cond_1
    iget-object v3, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mRequestQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v4, Lcom/baidu/yi/ads/AdServiceConnector$Operation;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/baidu/yi/ads/AdServiceConnector$Operation;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method restoreState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 344
    check-cast p1, Lcom/baidu/yi/ads/Ad;

    .end local p1
    iput-object p1, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAd:Lcom/baidu/yi/ads/Ad;

    .line 345
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAd:Lcom/baidu/yi/ads/Ad;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAdView:Lcom/baidu/yi/ads/AdView;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdServiceConnector;->mAd:Lcom/baidu/yi/ads/Ad;

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/AdView;->onAdRetrieved(Lcom/baidu/yi/ads/Ad;)V

    .line 348
    :cond_0
    return-void
.end method
