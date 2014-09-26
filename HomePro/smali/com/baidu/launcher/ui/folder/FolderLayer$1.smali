.class Lcom/baidu/launcher/ui/folder/FolderLayer$1;
.super Ljava/lang/Object;
.source "FolderLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/folder/FolderLayer;->startFolderOpenAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/folder/FolderLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v1, 0x3f80

    .line 353
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;
    invoke-static {v2}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$000(Lcom/baidu/launcher/ui/folder/FolderLayer;)Lcom/baidu/launcher/ui/folder/FolderContainer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/folder/FolderContainer;->setVisibility(I)V

    .line 354
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #calls: Lcom/baidu/launcher/ui/folder/FolderLayer;->enableAndBuildHardwareLayer()V
    invoke-static {v1}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$100(Lcom/baidu/launcher/ui/folder/FolderLayer;)V

    .line 356
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 357
    .local v7, alphaIn:Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;
    invoke-static {v1}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$000(Lcom/baidu/launcher/ui/folder/FolderLayer;)Lcom/baidu/launcher/ui/folder/FolderContainer;

    move-result-object v1

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 358
    .local v8, mFolderOpenAnim:Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v8, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    const-wide/16 v1, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 360
    new-instance v1, Lcom/baidu/launcher/ui/folder/FolderLayer$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/folder/FolderLayer$1$1;-><init>(Lcom/baidu/launcher/ui/folder/FolderLayer$1;)V

    invoke-virtual {v8, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 365
    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    .line 377
    .end local v7           #alphaIn:Landroid/animation/PropertyValuesHolder;
    .end local v8           #mFolderOpenAnim:Landroid/animation/ObjectAnimator;
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;
    invoke-static {v2}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$000(Lcom/baidu/launcher/ui/folder/FolderLayer;)Lcom/baidu/launcher/ui/folder/FolderContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/folder/FolderContainer;->clearAnimation()V

    .line 368
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 369
    .local v8, mFolderOpenAnim:Landroid/view/animation/AnimationSet;
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x4348

    invoke-direct {v7, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 370
    .local v7, alphaIn:Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderLayer;->scaleY:F
    invoke-static {v2}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$200(Lcom/baidu/launcher/ui/folder/FolderLayer;)F

    move-result v3

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotX:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$300(Lcom/baidu/launcher/ui/folder/FolderLayer;)I

    move-result v2

    int-to-float v5, v2

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderLayer;->mPivotY:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$400(Lcom/baidu/launcher/ui/folder/FolderLayer;)I

    move-result v2

    int-to-float v6, v2

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 371
    .local v0, scaleIn:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 372
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 373
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderAnimationTime:J
    invoke-static {v1}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$500(Lcom/baidu/launcher/ui/folder/FolderLayer;)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 374
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/FolderLayer$1;->this$0:Lcom/baidu/launcher/ui/folder/FolderLayer;

    #getter for: Lcom/baidu/launcher/ui/folder/FolderLayer;->mFolderLayout:Lcom/baidu/launcher/ui/folder/FolderContainer;
    invoke-static {v1}, Lcom/baidu/launcher/ui/folder/FolderLayer;->access$000(Lcom/baidu/launcher/ui/folder/FolderLayer;)Lcom/baidu/launcher/ui/folder/FolderContainer;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/baidu/launcher/ui/folder/FolderContainer;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 356
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
