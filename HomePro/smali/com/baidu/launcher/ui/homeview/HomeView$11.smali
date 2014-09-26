.class Lcom/baidu/launcher/ui/homeview/HomeView$11;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;->onAppChanged(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

.field final synthetic val$changes:Ljava/util/ArrayList;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iput p2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->val$type:I

    iput-object p3, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1508
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->val$type:I

    packed-switch v2, :pswitch_data_0

    .line 1538
    :goto_0
    :pswitch_0
    return-void

    .line 1512
    :pswitch_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1513
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    .line 1514
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->onHomeViewReflash()V

    .line 1517
    :pswitch_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateAppsAdd(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1520
    :pswitch_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 1521
    .local v1, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    .line 1522
    const/4 v2, 0x5

    iput v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 1523
    const/16 v2, 0x14

    iput v2, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->itemType:I

    goto :goto_1

    .line 1525
    .end local v1           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->onHomeViewReflash()V

    goto :goto_0

    .line 1528
    .end local v0           #i$:Ljava/util/Iterator;
    :pswitch_4
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 1529
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/DockBar;->removeItems(Ljava/util/ArrayList;)V

    .line 1530
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->layoutItemsParams()V

    .line 1531
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v2, v2, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/DockBar;->requestLayout()V

    goto :goto_0

    .line 1534
    :pswitch_5
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/HomeView$11;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1508
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
