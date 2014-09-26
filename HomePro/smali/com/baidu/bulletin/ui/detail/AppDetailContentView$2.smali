.class Lcom/baidu/bulletin/ui/detail/AppDetailContentView$2;
.super Ljava/lang/Object;
.source "AppDetailContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->generateEmptyView()V
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
    .line 419
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$2;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$2;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$2;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->access$600(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->updateDetailView(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 425
    return-void
.end method
