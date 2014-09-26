.class Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1$1;
.super Ljava/lang/Object;
.source "PageFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1$1;->this$2:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1$1;->this$2:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;->this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->isMultiFlipping()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1$1;->this$2:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;->this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    #getter for: Lcom/baidu/bulletin/ui/flippage/PageFactory;->mActors:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->access$100(Lcom/baidu/bulletin/ui/flippage/PageFactory;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->disappear()V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1$1;->this$2:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;->this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->this$0:Lcom/baidu/bulletin/ui/flippage/PageFactory;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory;->clearPages()V

    .line 273
    iget-object v0, p0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1$1;->this$2:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page$1;->this$1:Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;

    #getter for: Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->mListener:Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;->access$200(Lcom/baidu/bulletin/ui/flippage/PageFactory$Page;)Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/flippage/PageFactory$Listener;->onEnd()V

    goto :goto_0
.end method
