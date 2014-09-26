.class Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor$1;
.super Landroid/os/FileObserver;
.source "FetchThemeDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;-><init>(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;

.field final synthetic val$this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;Ljava/lang/String;Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor$1;->this$1:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;

    iput-object p3, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor$1;->val$this$0:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    .parameter "evt"
    .parameter "path"

    .prologue
    .line 457
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor$1;->this$1:Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;

    #calls: Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;->commonHandler(ILjava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;->access$400(Lcom/baidu/launcher/thememanager/service/FetchThemeDataService$DownloadMonitor;ILjava/lang/String;)V

    .line 458
    return-void
.end method
