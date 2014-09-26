.class Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$4;
.super Ljava/lang/Object;
.source "DetailNewsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

.field final synthetic val$downloadText:Ljava/lang/String;

.field final synthetic val$downloadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$4;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$4;->val$downloadUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$4;->val$downloadText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 399
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForBaiduNewsDownloadClick()V

    .line 400
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-eq v0, v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$4;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->access$100(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/utils/AppDownloadManager;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/utils/AppDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$4;->val$downloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$4;->val$downloadText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/utils/AppDownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$4;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->access$100(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->showNetworkSetting(Landroid/content/Context;)V

    goto :goto_0
.end method
