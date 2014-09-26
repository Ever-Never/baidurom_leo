.class Lcom/android/systemui/statusbar/holiday/GifView$1;
.super Landroid/os/Handler;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/holiday/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/holiday/GifView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/holiday/GifView;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifView$1;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/high16 v4, 0x4000

    const/4 v5, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 69
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifView$1;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    const/4 v4, 0x0

    #setter for: Lcom/android/systemui/statusbar/holiday/GifView;->drawThread:Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/holiday/GifView;->access$002(Lcom/android/systemui/statusbar/holiday/GifView;Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;)Lcom/android/systemui/statusbar/holiday/GifView$DrawThread;

    .line 72
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifView$1;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #setter for: Lcom/android/systemui/statusbar/holiday/GifView;->isPlay:Z
    invoke-static {v3, v5}, Lcom/android/systemui/statusbar/holiday/GifView;->access$102(Lcom/android/systemui/statusbar/holiday/GifView;Z)Z

    .line 73
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifView$1;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/holiday/GifView;->setHolidayContentVisiable(Z)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifView$1;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/holiday/GifView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 78
    .local v1, parent:Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifView$1;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/holiday/GifView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 79
    .local v2, widthSpec:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/holiday/GifView$1;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/holiday/GifView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 80
    .local v0, heightSpec:I
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 81
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
