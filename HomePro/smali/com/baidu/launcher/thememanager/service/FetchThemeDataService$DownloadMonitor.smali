.class Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;
.super Ljava/lang/Object;
.source "FetchThemeDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadMonitor"
.end annotation


# instance fields
.field mMonitor:Landroid/os/FileObserver;

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;)V
    .locals 2
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    new-instance v0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor$1;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor$1;-><init>(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;Ljava/lang/String;Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;->mMonitor:Landroid/os/FileObserver;

    .line 460
    return-void
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 450
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;->commonHandler(ILjava/lang/String;)V

    return-void
.end method

.method private commonHandler(ILjava/lang/String;)V
    .locals 3
    .parameter "evt"
    .parameter "path"

    .prologue
    .line 463
    packed-switch p1, :pswitch_data_0

    .line 472
    :goto_0
    return-void

    .line 465
    :pswitch_0
    invoke-static {p2}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isSupprotWallpaperType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    #calls: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->needAnalyTheme(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->access$500(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;Ljava/lang/String;I)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;->this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    #calls: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->needAnalyTheme(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;->access$500(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;Ljava/lang/String;I)V

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method startWatching()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;->mMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 476
    return-void
.end method

.method stopWatching()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;->mMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 480
    return-void
.end method
