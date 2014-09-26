.class Lcom/inveno/newpiflow/widget/PiWindowView$3;
.super Ljava/lang/Object;
.source "PiWindowView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/widget/PiWindowView;->downloadIqiyiApk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/widget/PiWindowView;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/widget/PiWindowView;)V
    .locals 0
    .parameter

    .prologue
    .line 770
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiWindowView$3;->this$0:Lcom/inveno/newpiflow/widget/PiWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    .line 774
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PiWindowView$3;->this$0:Lcom/inveno/newpiflow/widget/PiWindowView;

    #getter for: Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/inveno/newpiflow/widget/PiWindowView;->access$100(Lcom/inveno/newpiflow/widget/PiWindowView;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "download"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 775
    .local v1, downloadManager:Landroid/app/DownloadManager;
    const-string v6, "http://mbdapp.iqiyi.com/j/ap/qiyi.196.apk"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 776
    .local v5, resource:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, downFile:Ljava/lang/String;
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-direct {v4, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 778
    .local v4, request:Landroid/app/DownloadManager$Request;
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 779
    invoke-virtual {v4, v8}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    .line 780
    invoke-virtual {v4, v8}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 781
    const-string v6, ""

    invoke-virtual {v4, v6, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 782
    invoke-virtual {v1, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 783
    .local v2, id:J
    iget-object v6, p0, Lcom/inveno/newpiflow/widget/PiWindowView$3;->this$0:Lcom/inveno/newpiflow/widget/PiWindowView;

    #getter for: Lcom/inveno/newpiflow/widget/PiWindowView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/inveno/newpiflow/widget/PiWindowView;->access$100(Lcom/inveno/newpiflow/widget/PiWindowView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Lcom/inveno/newpiflow/tools/AdUtil;->setDownloadID(Landroid/content/Context;J)V

    .line 784
    return-void
.end method
