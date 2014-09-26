.class Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;
.super Ljava/lang/Object;
.source "ImageDetailContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
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
    .line 453
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;->val$downloadText:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;->val$downloadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/utils/AppDownloadManager;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/utils/AppDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;->val$downloadText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/AppDownloadManager;->isAppDownload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;->val$downloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;->val$downloadText:Ljava/lang/String;

    #calls: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->showDownloadDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$1500(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/utils/AppDownloadManager;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/utils/AppDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;->val$downloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$6;->val$downloadText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/utils/AppDownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
