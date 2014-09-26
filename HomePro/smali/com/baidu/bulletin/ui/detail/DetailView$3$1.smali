.class Lcom/baidu/bulletin/ui/detail/DetailView$3$1;
.super Ljava/lang/Object;
.source "DetailView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/DetailView$3;->onOpInfoCallback(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/detail/DetailView$3;

.field final synthetic val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailView$3;Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailView$3$1;->this$1:Lcom/baidu/bulletin/ui/detail/DetailView$3;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/DetailView$3$1;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView$3$1;->this$1:Lcom/baidu/bulletin/ui/detail/DetailView$3;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailView$3;->this$0:Lcom/baidu/bulletin/ui/detail/DetailView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView$3$1;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    #calls: Lcom/baidu/bulletin/ui/detail/DetailView;->updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/detail/DetailView;->access$500(Lcom/baidu/bulletin/ui/detail/DetailView;Lcom/baidu/bulletin/db/entity/OpItemInfo;)V

    .line 284
    return-void
.end method
