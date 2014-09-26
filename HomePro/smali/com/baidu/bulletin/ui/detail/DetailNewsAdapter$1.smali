.class Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$1;
.super Ljava/lang/Object;
.source "DetailNewsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->drawView(ILandroid/view/View;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

.field final synthetic val$info:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$1;->val$info:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 143
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForScanMoreNews()V

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->access$100(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$1;->val$info:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    #calls: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->getSearchIntent(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->access$000(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$1;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->access$100(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0271

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method
