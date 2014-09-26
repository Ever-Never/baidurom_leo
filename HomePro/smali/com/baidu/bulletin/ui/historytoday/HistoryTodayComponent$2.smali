.class Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;
.super Ljava/lang/Object;
.source "HistoryTodayComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 2
    .parameter "bitmap"
    .parameter "imageInfo"

    .prologue
    .line 482
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 483
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;->this$0:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;

    #getter for: Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->access$300(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2$1;-><init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;Landroid/graphics/Bitmap;Lcom/baidu/bulletin/db/entity/ImageInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 495
    :cond_0
    return-void
.end method
