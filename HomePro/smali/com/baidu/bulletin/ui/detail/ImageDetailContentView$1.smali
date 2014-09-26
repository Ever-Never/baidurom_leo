.class Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$1;
.super Ljava/lang/Object;
.source "ImageDetailContentView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->createDownloadDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

.field final synthetic val$downloadText:Ljava/lang/String;

.field final synthetic val$downloadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$1;->val$downloadUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$1;->val$downloadText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 128
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForMeiPaiDownloadClick()V

    .line 129
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-eq v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/utils/AppDownloadManager;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/utils/AppDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$1;->val$downloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$1;->val$downloadText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/utils/AppDownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 136
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$1;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->showNetworkSetting(Landroid/content/Context;)V

    goto :goto_0
.end method
