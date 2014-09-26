.class Lcom/baidu/bulletin/ui/detail/ViewFlow$3;
.super Ljava/lang/Object;
.source "ViewFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/ViewFlow;->postViewSwitched(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/ViewFlow;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$3;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$3;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/ViewFlow$3;->this$0:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    #getter for: Lcom/baidu/bulletin/ui/detail/ViewFlow;->mCurrentBufferIndex:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->access$200(Lcom/baidu/bulletin/ui/detail/ViewFlow;)I

    move-result v1

    const/4 v2, 0x1

    #calls: Lcom/baidu/bulletin/ui/detail/ViewFlow;->setVisibleView(IZ)V
    invoke-static {v0, v1, v2}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->access$300(Lcom/baidu/bulletin/ui/detail/ViewFlow;IZ)V

    .line 612
    return-void
.end method
