.class public Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SqueezeRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)V
    .locals 0
    .parameter
    .parameter "itemIndex"

    .prologue
    .line 2764
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    .line 2765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2766
    #setter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mReadyMoveIndex:I
    invoke-static {p1, p2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$102(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)I

    .line 2767
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$200(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mReadyMoveIndex:I
    invoke-static {v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$100(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)I

    move-result v2

    #calls: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->calculateAnimateViews(II)V
    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$300(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;II)V

    .line 2772
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mReadyMoveIndex:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$100(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)I

    move-result v1

    #setter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mDragMoveIndex:I
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$202(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)I

    .line 2773
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    #calls: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->postAnimation()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$400(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V

    .line 2774
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$SqueezeRunnable;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v1, -0x1

    #setter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mReadyMoveIndex:I
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$102(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)I

    .line 2775
    return-void
.end method
