.class Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback$2;
.super Ljava/lang/Object;
.source "DetailNewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->onNewsDetailCallback(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback$2;->this$1:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback$2;->this$1:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback$2;->this$1:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->mPos:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->access$300(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback$2;->this$1:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;->access$400(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    #calls: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->drawView(ILandroid/view/View;Z)Landroid/view/View;
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->access$200(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;ILandroid/view/View;Z)Landroid/view/View;

    .line 265
    return-void
.end method
