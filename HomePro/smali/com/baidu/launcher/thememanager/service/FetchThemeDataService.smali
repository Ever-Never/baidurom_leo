.class public Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;
.super Landroid/app/Service;
.source "FetchThemeDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;,
        Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FetchThemeDataService"


# instance fields
.field private mBootReceiver:Lcom/baidu/launcher/thememanager/service/ThemeReceiver;

.field private mContext:Landroid/content/Context;

.field private mDownloadMonitor:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLooper:Landroid/os/Looper;

.field private mProviderBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceHandler:Landroid/os/Handler;

.field startType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->startType:I

    .line 450
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->analyThemeByPath(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mProviderBeans:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mProviderBeans:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->scanDownloadFolder(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->needAnalyTheme(Ljava/lang/String;I)V

    return-void
.end method

.method private analyDefaultTheme()V
    .locals 2

    .prologue
    .line 193
    const-string v0, "com.baidu.launcher"

    .line 194
    .local v0, filePath:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->needAnalyTheme(Ljava/lang/String;I)V

    .line 195
    return-void
.end method

.method private analyThemeByPath(Ljava/lang/String;I)V
    .locals 3
    .parameter "path"
    .parameter "scanType"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x2

    .line 198
    if-eqz p1, :cond_1

    .line 199
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 200
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    if-ne p2, v1, :cond_2

    .line 202
    iput v1, v0, Landroid/os/Message;->what:I

    .line 206
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void

    .line 203
    .restart local v0       #msg:Landroid/os/Message;
    :cond_2
    if-ne p2, v2, :cond_0

    .line 204
    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method private needAnalyTheme(Ljava/lang/String;I)V
    .locals 6
    .parameter "filePath"
    .parameter "aType"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x5

    .line 211
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, fileTyepPos:I
    if-eq v0, v5, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, fileType:Ljava/lang/String;
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 228
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 212
    .end local v1           #fileType:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 216
    .restart local v1       #fileType:Ljava/lang/String;
    :pswitch_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isSupprotType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    invoke-direct {p0, p1, v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->analyThemeByPath(Ljava/lang/String;I)V

    goto :goto_1

    .line 218
    :cond_2
    const-string v2, "com.baidu.launcher"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v5, :cond_0

    .line 219
    invoke-direct {p0, p1, v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->analyThemeByPath(Ljava/lang/String;I)V

    goto :goto_1

    .line 223
    :pswitch_2
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isSupprotWallpaperType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-direct {p0, p1, v4}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->analyThemeByPath(Ljava/lang/String;I)V

    goto :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private registerBootReceiver()V
    .locals 2

    .prologue
    .line 232
    new-instance v1, Lcom/baidu/launcher/thememanager/service/ThemeReceiver;

    invoke-direct {v1}, Lcom/baidu/launcher/thememanager/service/ThemeReceiver;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mBootReceiver:Lcom/baidu/launcher/thememanager/service/ThemeReceiver;

    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v0, mFilter2:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    const-string v1, "com.baidu.launcher.download_progress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "com.baidu.launcher.download_completed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mBootReceiver:Lcom/baidu/launcher/thememanager/service/ThemeReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    return-void
.end method

.method private scanDownloadFolder(I)V
    .locals 13
    .parameter "aType"

    .prologue
    .line 158
    packed-switch p1, :pswitch_data_0

    .line 180
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, downloadFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 183
    .local v4, files:[Ljava/io/File;
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v2, v0, v6

    .line 184
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    .line 185
    const-string v10, "FetchThemeDataService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "find file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, filePath:Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->needAnalyTheme(Ljava/lang/String;I)V

    .line 183
    .end local v3           #filePath:Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 160
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #downloadFile:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :pswitch_1
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->validDBData(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 163
    .local v9, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 164
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 166
    .local v8, p:Landroid/content/pm/PackageInfo;
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.baidu.launcher.theme"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_1

    .line 167
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10, p1}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->needAnalyTheme(Ljava/lang/String;I)V

    .line 163
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 170
    .end local v8           #p:Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->analyDefaultTheme()V

    goto :goto_0

    .line 174
    .end local v5           #i:I
    .end local v9           #packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :pswitch_2
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->validDatabase(Landroid/content/Context;)V

    goto :goto_0

    .line 191
    .restart local v1       #downloadFile:Ljava/io/File;
    :cond_3
    return-void

    .line 158
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startSdCardMonitor()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mDownloadMonitor:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;-><init>(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mDownloadMonitor:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mDownloadMonitor:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;->startWatching()V

    .line 59
    return-void
.end method

.method private stopSdCardMonitor()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mDownloadMonitor:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mDownloadMonitor:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;->stopWatching()V

    .line 65
    :cond_0
    return-void
.end method

.method private unRegisterBootReceiver()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mBootReceiver:Lcom/baidu/launcher/thememanager/service/ThemeReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->registerBootReceiver()V

    .line 71
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->clearUnfinishDownloadTask(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FetchThemeDataService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mLooper:Landroid/os/Looper;

    .line 79
    new-instance v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$ServiceHandler;-><init>(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 146
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->unRegisterBootReceiver()V

    .line 147
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 149
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    .line 84
    const-string v2, "FetchThemeDataService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 89
    const-string v2, "com.baidu.launcher.download_completed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    :cond_0
    :goto_0
    const/4 v2, 0x2

    return v2

    .line 93
    :cond_1
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    iget v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->startType:I

    if-ne v2, v5, :cond_3

    .line 97
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->startSdCardMonitor()V

    goto :goto_0

    .line 98
    :cond_3
    iget v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->startType:I

    if-ne v2, v6, :cond_4

    .line 99
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 100
    :cond_4
    iget v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->startType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 101
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 102
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 106
    :cond_5
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 110
    :cond_6
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->stopSdCardMonitor()V

    .line 111
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelAllDownloadWithNotice(Landroid/content/Context;)V

    goto :goto_0

    .line 113
    :cond_7
    const-string v2, "com.baidu.launcher.thememanager.defaultFolder.exists_check"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 115
    iput v5, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->startType:I

    .line 116
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 118
    :cond_8
    const-string v2, "com.baidu.launcher.thememanager.defaultFolder.exists_check_wallpaper"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 119
    iput v6, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->startType:I

    .line 120
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 122
    :cond_9
    const-string v2, "com.baidu.thememanager.ui.openfile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 124
    const-string v2, "com.baidu.thememanager.extra.downloadpath"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, path:Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->needAnalyTheme(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 126
    .end local v1           #path:Ljava/lang/String;
    :cond_a
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 127
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .restart local v1       #path:Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->needAnalyTheme(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 129
    .end local v1           #path:Ljava/lang/String;
    :cond_b
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 130
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .restart local v1       #path:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 132
    .end local v1           #path:Ljava/lang/String;
    :cond_c
    const-string v2, "com.baidu.thememanager.ui.open_apply"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 133
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .restart local v1       #path:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 135
    .end local v1           #path:Ljava/lang/String;
    :cond_d
    const-string v2, "com.baidu.thememanager.ui.scanapk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->mServiceHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
