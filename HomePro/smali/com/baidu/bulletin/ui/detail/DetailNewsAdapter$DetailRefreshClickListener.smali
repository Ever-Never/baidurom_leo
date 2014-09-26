.class Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailRefreshClickListener;
.super Ljava/lang/Object;
.source "DetailNewsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetailRefreshClickListener"
.end annotation


# instance fields
.field private mPos:I

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter "convertView"
    .parameter "position"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailRefreshClickListener;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailRefreshClickListener;->mView:Landroid/view/View;

    .line 226
    iput p3, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailRefreshClickListener;->mPos:I

    .line 227
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 230
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-eq v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailRefreshClickListener;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    iget v1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailRefreshClickListener;->mPos:I

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailRefreshClickListener;->mView:Landroid/view/View;

    const/4 v3, 0x0

    #calls: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->drawView(ILandroid/view/View;Z)Landroid/view/View;
    invoke-static {v0, v1, v2, v3}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->access$200(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;ILandroid/view/View;Z)Landroid/view/View;

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailRefreshClickListener;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->access$100(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->showNetworkSetting(Landroid/content/Context;)V

    goto :goto_0
.end method
