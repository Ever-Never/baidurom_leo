.class Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyView;
.super Landroid/widget/LinearLayout;
.source "StatusBarForceShowHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyView;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    .line 128
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 129
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 134
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 135
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    .line 137
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyView;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    #setter for: Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mLastMotionX:F
    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->access$302(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;F)F

    .line 138
    iget-object v7, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyView;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    #setter for: Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mLastMotionY:F
    invoke-static {v7, v5}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->access$402(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;F)F

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyView;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    #getter for: Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mLastMotionX:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->access$300(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)F

    move-result v8

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v3, v8

    .line 142
    .local v3, xDiff:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyView;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    #getter for: Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mLastMotionY:F
    invoke-static {v8}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->access$400(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)F

    move-result v8

    sub-float v8, v5, v8

    float-to-int v6, v8

    .line 143
    .local v6, yDiff:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyView;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    #getter for: Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mTouchSlop:I
    invoke-static {v8}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->access$500(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)I

    move-result v1

    .line 144
    .local v1, touchSlop:I
    mul-int/lit8 v8, v1, 0x3

    if-le v3, v8, :cond_1

    move v4, v0

    .line 145
    .local v4, xMoved:Z
    :goto_1
    mul-int/lit8 v8, v1, 0x3

    if-le v6, v8, :cond_2

    if-nez v4, :cond_2

    .line 146
    .local v0, collapse:Z
    :goto_2
    if-eqz v0, :cond_0

    .line 147
    iget-object v7, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyView;->this$0:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    #calls: Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->forceShowStatusBar()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->access$600(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)V

    goto :goto_0

    .end local v0           #collapse:Z
    .end local v4           #xMoved:Z
    :cond_1
    move v4, v7

    .line 144
    goto :goto_1

    .restart local v4       #xMoved:Z
    :cond_2
    move v0, v7

    .line 145
    goto :goto_2

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
