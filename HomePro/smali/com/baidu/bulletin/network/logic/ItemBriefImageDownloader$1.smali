.class Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader$1;
.super Ljava/lang/Thread;
.source "ItemBriefImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->downloadAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloader;->download()V

    .line 56
    return-void
.end method
