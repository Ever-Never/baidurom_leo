.class public Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;
.super Ljava/lang/Object;
.source "ThumbnailGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EnterHomeRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/editview/ThumbnailGroup;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;->this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    .line 1496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1497
    iput-object p2, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;->v:Landroid/view/View;

    .line 1498
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const v2, 0x3f99999a

    const/high16 v1, 0x3f80

    .line 1502
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f00

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1505
    .local v0, animation:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1506
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1507
    new-instance v1, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable$1;-><init>(Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EnterHomeRunnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1532
    return-void
.end method
