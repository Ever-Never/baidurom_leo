.class Lcom/baidu/bulletin/ui/detail/DetailView$3;
.super Ljava/lang/Object;
.source "DetailView.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/DetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/DetailView;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailView$3;->this$0:Lcom/baidu/bulletin/ui/detail/DetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpInfoCallback(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/OpItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    if-nez p2, :cond_0

    .line 278
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView$3;->this$0:Lcom/baidu/bulletin/ui/detail/DetailView;

    #calls: Lcom/baidu/bulletin/ui/detail/DetailView;->getNoExistItem(Ljava/util/List;)Lcom/baidu/bulletin/db/entity/OpItemInfo;
    invoke-static {v1, p1}, Lcom/baidu/bulletin/ui/detail/DetailView;->access$400(Lcom/baidu/bulletin/ui/detail/DetailView;Ljava/util/List;)Lcom/baidu/bulletin/db/entity/OpItemInfo;

    move-result-object v0

    .line 280
    .local v0, opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView$3;->this$0:Lcom/baidu/bulletin/ui/detail/DetailView;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContenViewGroup:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/DetailView;->access$600(Lcom/baidu/bulletin/ui/detail/DetailView;)Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Lcom/baidu/bulletin/ui/detail/DetailView$3$1;

    invoke-direct {v2, p0, v0}, Lcom/baidu/bulletin/ui/detail/DetailView$3$1;-><init>(Lcom/baidu/bulletin/ui/detail/DetailView$3;Lcom/baidu/bulletin/db/entity/OpItemInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 288
    .end local v0           #opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;
    :cond_0
    return-void
.end method
