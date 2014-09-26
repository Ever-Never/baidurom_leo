.class Lcom/baidu/yi/ads/AdServiceConnector$1;
.super Ljava/lang/Object;
.source "AdServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/AdServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/ads/AdServiceConnector;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/AdServiceConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/AdServiceConnector$1;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 158
    const-string v0, "Service connected"

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/baidu/yi/ads/AdServiceConnector$1;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$1;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    invoke-static {p2}, Lcom/baidu/yi/ads/service/IAdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/yi/ads/service/IAdService;

    move-result-object v2

    #setter for: Lcom/baidu/yi/ads/AdServiceConnector;->mAdService:Lcom/baidu/yi/ads/service/IAdService;
    invoke-static {v0, v2}, Lcom/baidu/yi/ads/AdServiceConnector;->access$0(Lcom/baidu/yi/ads/AdServiceConnector;Lcom/baidu/yi/ads/service/IAdService;)V

    .line 162
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$1;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/yi/ads/AdServiceConnector;->mUnbindRequested:Z
    invoke-static {v0, v2}, Lcom/baidu/yi/ads/AdServiceConnector;->access$1(Lcom/baidu/yi/ads/AdServiceConnector;Z)V

    .line 160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$1;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    #calls: Lcom/baidu/yi/ads/AdServiceConnector;->checkQueue()V
    invoke-static {v0}, Lcom/baidu/yi/ads/AdServiceConnector;->access$2(Lcom/baidu/yi/ads/AdServiceConnector;)V

    .line 165
    return-void

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "className"

    .prologue
    .line 171
    const-string v0, "Service disconnected"

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/baidu/yi/ads/AdServiceConnector$1;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$1;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/yi/ads/AdServiceConnector;->mAdService:Lcom/baidu/yi/ads/service/IAdService;
    invoke-static {v0, v2}, Lcom/baidu/yi/ads/AdServiceConnector;->access$0(Lcom/baidu/yi/ads/AdServiceConnector;Lcom/baidu/yi/ads/service/IAdService;)V

    .line 174
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$1;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/yi/ads/AdServiceConnector;->mBindRequested:Z
    invoke-static {v0, v2}, Lcom/baidu/yi/ads/AdServiceConnector;->access$3(Lcom/baidu/yi/ads/AdServiceConnector;Z)V

    .line 172
    monitor-exit v1

    .line 176
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
