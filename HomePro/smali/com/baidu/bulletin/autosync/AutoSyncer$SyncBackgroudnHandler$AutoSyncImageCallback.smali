.class Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncImageCallback;
.super Ljava/lang/Object;
.source "AutoSyncer.java"

# interfaces
.implements Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoSyncImageCallback"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 478
    iput-object p1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncImageCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput p2, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncImageCallback;->mIndex:I

    .line 480
    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 4
    .parameter "bitmap"
    .parameter "imageInfo"

    .prologue
    .line 483
    iget-object v1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncImageCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    const/4 v2, 0x6

    iget v3, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncImageCallback;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 484
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncImageCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 485
    return-void
.end method
