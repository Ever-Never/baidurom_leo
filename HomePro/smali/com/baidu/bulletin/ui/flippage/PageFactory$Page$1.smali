.class Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;
.super Ljava/lang/Object;
.source "PageFactory.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;->this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;->this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    #getter for: Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mListener:Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->access$200(Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;)Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1$1;-><init>(Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 281
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 260
    return-void
.end method
