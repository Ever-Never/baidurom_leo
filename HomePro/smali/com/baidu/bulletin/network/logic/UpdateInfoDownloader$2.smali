.class Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$2;
.super Ljava/lang/Object;
.source "UpdateInfoDownloader.java"

# interfaces
.implements Lcom/baidu/bulletin/network/logic/DownloadObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    #calls: Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->notifyOberver()V
    invoke-static {v0}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->access$400(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)V

    .line 62
    return-void
.end method
