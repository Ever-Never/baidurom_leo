.class Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;
.super Ljava/lang/Object;
.source "FloatWindowComponent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveOnTouchListener"
.end annotation


# static fields
.field private static final DISTANCE_THRESHOLD:F = 10.0f

.field private static final IDEL:I = 0x0

.field private static final MOVING:I = 0x2

.field private static final START_MOVE:I = 0x1


# instance fields
.field private mLayoutParamX:F

.field private mLayoutParamY:F

.field private mPreY:F

.field private mPrex:F

.field private mState:I

.field final synthetic this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mState:I

    .line 153
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v5, 0x4120

    const/4 v4, 0x1

    const/4 v6, 0x2

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, isConsumed:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 161
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 162
    .local v1, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 163
    .local v2, y:F
    iget v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mState:I

    if-nez v3, :cond_1

    .line 164
    iput v4, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mState:I

    .line 165
    iput v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mPrex:F

    .line 166
    iput v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mPreY:F

    .line 168
    iget-object v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    #getter for: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->access$000(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    iput v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mLayoutParamX:F

    .line 169
    iget-object v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    #getter for: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->access$000(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v3, v3

    iput v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mLayoutParamY:F

    .line 191
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_0
    :goto_0
    return v0

    .line 171
    .restart local v1       #x:F
    .restart local v2       #y:F
    :cond_1
    iget v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mState:I

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mState:I

    if-ne v3, v6, :cond_0

    .line 173
    :cond_2
    iget v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mPrex:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_3

    iget v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mPreY:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 175
    :cond_3
    iget-object v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    #getter for: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->access$000(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mLayoutParamX:F

    iget v5, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mPrex:F

    sub-float v5, v1, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 176
    iget-object v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    #getter for: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->access$000(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mLayoutParamY:F

    iget v5, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mPreY:F

    sub-float v5, v2, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 178
    iput v6, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mState:I

    .line 179
    iget-object v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    #getter for: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->access$200(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    #getter for: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mFloatWindowImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->access$100(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)Landroid/widget/ImageView;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->this$0:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    #getter for: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->access$000(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 184
    .end local v1           #x:F
    .end local v2           #y:F
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 185
    iget v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mState:I

    if-ne v3, v6, :cond_5

    .line 186
    const/4 v0, 0x1

    .line 189
    :cond_5
    const/4 v3, 0x0

    iput v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;->mState:I

    goto :goto_0
.end method
