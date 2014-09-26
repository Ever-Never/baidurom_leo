.class public Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;
.super Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;
.source "FanNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressAnim"
.end annotation


# instance fields
.field private mFromProgress:I

.field private mToProgress:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;Lcom/baidu/launcher/ui/widget/baidu/theme/Node;)V
    .locals 0
    .parameter
    .parameter "n"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    .line 233
    invoke-direct {p0, p2}, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Node;)V

    .line 235
    return-void
.end method


# virtual methods
.method public doTransform(F)V
    .locals 3
    .parameter "animPercent"

    .prologue
    .line 239
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->mToProgress:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->mFromProgress:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->mFromProgress:I

    add-int v0, v1, v2

    .line 240
    .local v0, target:I
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/Node;

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setProgress(I)V

    .line 241
    return-void
.end method

.method public getTargetProgress()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->mToProgress:I

    return v0
.end method

.method public setProgress(II)V
    .locals 0
    .parameter "from"
    .parameter "to"

    .prologue
    .line 244
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->mFromProgress:I

    .line 245
    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode$ProgressAnim;->mToProgress:I

    .line 246
    return-void
.end method
