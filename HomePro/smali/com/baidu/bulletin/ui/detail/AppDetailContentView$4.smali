.class Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;
.super Ljava/lang/Object;
.source "AppDetailContentView.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$ApplistCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/AppDetailContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplistCallback(Ljava/util/List;I)V
    .locals 2
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/AppDetailInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    if-nez p2, :cond_1

    .line 472
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$1;-><init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 497
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$2;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$2;-><init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$3;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4$3;-><init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView$4;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
