.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;
.super Ljava/lang/Object;
.source "SwitchExtLayer.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->startCloseAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

.field final synthetic val$bottomDelta:F

.field final synthetic val$targetHeight:I

.field final synthetic val$topDleta:F


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;FFI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->val$topDleta:F

    iput p3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->val$bottomDelta:F

    iput p4, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->val$targetHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 9
    .parameter "ani"

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 180
    .local v2, progress:F
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    const/high16 v6, 0x3f80

    sub-float/2addr v6, v2

    const/high16 v7, 0x4316

    mul-float/2addr v6, v7

    float-to-int v6, v6

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mBgAlpha:I
    invoke-static {v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$102(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;I)I

    .line 182
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->val$topDleta:F

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 183
    .local v4, topAnimatedDelta:I
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->val$bottomDelta:F

    mul-float/2addr v5, v2

    float-to-int v1, v5

    .line 185
    .local v1, bottomAnimatedDelta:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTargetTop:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$1200(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTopOffset:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$400(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int v3, v5, v4

    .line 186
    .local v3, top:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTargetTop:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$1200(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTopOffset:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$400(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->val$targetHeight:I

    add-int/2addr v5, v6

    add-int v0, v5, v1

    .line 188
    .local v0, bottom:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchExtBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$800(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalX:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$600(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalX:I
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$600(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalWidth:I
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$700(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v3, v7, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->layout(IIII)V

    .line 190
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->invalidate()V

    .line 191
    return-void
.end method
