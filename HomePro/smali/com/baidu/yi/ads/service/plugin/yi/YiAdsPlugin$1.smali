.class Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$1;
.super Ljava/lang/Object;
.source "YiAdsPlugin.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    invoke-static {p2}, Lcom/baidu/opservice/aidl/IOpServiceAidl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/opservice/aidl/IOpServiceAidl;

    move-result-object v2

    #setter for: Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdService:Lcom/baidu/opservice/aidl/IOpServiceAidl;
    invoke-static {v0, v2}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->access$0(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;Lcom/baidu/opservice/aidl/IOpServiceAidl;)V

    .line 74
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mUnbindRequested:Z
    invoke-static {v0, v2}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->access$1(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;Z)V

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    #calls: Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->doRequest()V
    invoke-static {v0}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->access$2(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;)V

    .line 77
    return-void

    .line 72
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
    .parameter "name"

    .prologue
    .line 65
    iget-object v1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mYiAdService:Lcom/baidu/opservice/aidl/IOpServiceAidl;
    invoke-static {v0, v2}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->access$0(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;Lcom/baidu/opservice/aidl/IOpServiceAidl;)V

    .line 65
    monitor-exit v1

    .line 68
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
