.class Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;
.super Ljava/lang/Thread;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/holiday/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawThread"
.end annotation


# instance fields
.field private alreadyLoop:I

.field private runframe:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/holiday/GifView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/holiday/GifView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 507
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 508
    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->alreadyLoop:I

    .line 509
    iput v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->runframe:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/holiday/GifView;Lcom/android/systemui/statusbar/holiday/GifView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 513
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$900(Lcom/android/systemui/statusbar/holiday/GifView;)Lcom/android/systemui/statusbar/holiday/GifDecoder;

    move-result-object v4

    if-nez v4, :cond_2

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 524
    .local v0, frame:Lcom/android/systemui/statusbar/holiday/GifFrame;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    iget-object v5, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->image:Landroid/graphics/Bitmap;

    #setter for: Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/holiday/GifView;->access$1202(Lcom/android/systemui/statusbar/holiday/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 525
    iget v4, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->delay:I

    const/16 v5, 0x64

    if-ge v4, v5, :cond_5

    const-wide/16 v2, 0x64

    .line 526
    .local v2, sp:J
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$1300(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 527
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$1300(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 528
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->redrawHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$1300(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 529
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 534
    iget v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->runframe:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->runframe:I

    .line 535
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$900(Lcom/android/systemui/statusbar/holiday/GifView;)Lcom/android/systemui/statusbar/holiday/GifDecoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->getFrameCount()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->runframe:I

    if-ne v4, v5, :cond_2

    .line 536
    iget v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->alreadyLoop:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->alreadyLoop:I

    .line 537
    iput v6, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->runframe:I

    .line 538
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 539
    iput v6, v1, Landroid/os/Message;->what:I

    .line 540
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$1400(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 516
    .end local v0           #frame:Lcom/android/systemui/statusbar/holiday/GifFrame;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #sp:J
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->mLoop:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$1000(Lcom/android/systemui/statusbar/holiday/GifView;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->alreadyLoop:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->mLoop:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/holiday/GifView;->access$1000(Lcom/android/systemui/statusbar/holiday/GifView;)I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 517
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->pause:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$1100(Lcom/android/systemui/statusbar/holiday/GifView;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 519
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$1200(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$1200(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 520
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->currentImage:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$1200(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 521
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->gifDecoder:Lcom/android/systemui/statusbar/holiday/GifDecoder;
    invoke-static {v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$900(Lcom/android/systemui/statusbar/holiday/GifView;)Lcom/android/systemui/statusbar/holiday/GifDecoder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/holiday/GifDecoder;->next()Lcom/android/systemui/statusbar/holiday/GifFrame;

    move-result-object v0

    .line 522
    .restart local v0       #frame:Lcom/android/systemui/statusbar/holiday/GifFrame;
    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 525
    :cond_5
    iget v4, v0, Lcom/android/systemui/statusbar/holiday/GifFrame;->delay:I

    int-to-long v2, v4

    goto/16 :goto_1

    .line 543
    .end local v0           #frame:Lcom/android/systemui/statusbar/holiday/GifFrame;
    :cond_6
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2
.end method
