.class Lcom/baidu/bulletin/ui/detail/DetailView$1;
.super Ljava/lang/Object;
.source "DetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/DetailView;->init()V
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
    .line 90
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailView$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailView;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->access$000(Lcom/baidu/bulletin/ui/detail/DetailView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailView$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailView;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailView;->mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/DetailView;->access$100(Lcom/baidu/bulletin/ui/detail/DetailView;)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/detail/DetailShare;->showSharedDialog(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 96
    return-void
.end method
