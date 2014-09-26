.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;
.super Ljava/lang/Object;
.source "SwitchExtLayer.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->startStretchAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

.field final synthetic val$topDleta:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->val$topDleta:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 9
    .parameter "ani"

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 128
    .local v2, progress:F
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    const/high16 v6, 0x4316

    mul-float/2addr v6, v2

    float-to-int v6, v6

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mBgAlpha:I
    invoke-static {v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$102(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;I)I

    .line 130
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->val$topDleta:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 131
    .local v4, topAnimatedDelta:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mHeightDelta:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$200(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    float-to-int v1, v5

    .line 133
    .local v1, bottomAnimatedDelta:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalY:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$300(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mTopOffset:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$400(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v6

    sub-int v3, v5, v6

    .line 134
    .local v3, top:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalHeight:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$500(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v5

    add-int/2addr v5, v3

    add-int v0, v5, v1

    .line 136
    .local v0, bottom:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchExtBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$800(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalX:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$600(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalX:I
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$600(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v7

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mOriginalWidth:I
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$700(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v3, v7, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->layout(IIII)V

    .line 138
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->invalidate()V

    .line 139
    return-void
.end method
