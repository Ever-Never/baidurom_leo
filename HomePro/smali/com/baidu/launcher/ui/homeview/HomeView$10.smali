.class Lcom/baidu/launcher/ui/homeview/HomeView$10;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;->addHomeData(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

.field final synthetic val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 1480
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1454
    :pswitch_1
    iget-object v10, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    check-cast v10, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 1455
    .local v10, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-wide v4, v10, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->container:J

    const-wide/16 v6, -0xc8

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v0, v10}, Lcom/baidu/launcher/ui/homeview/HomeView;->createShortcut(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;

    move-result-object v1

    .line 1459
    .local v1, view:Landroid/view/View;
    iget v0, v10, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1460
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #calls: Lcom/baidu/launcher/ui/homeview/HomeView;->computeItemPosition(Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    invoke-static {v0, v10}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$800(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    iget v2, v10, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    iget v3, v10, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    iget v4, v10, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_0

    .line 1467
    .end local v1           #view:Landroid/view/View;
    .end local v10           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :pswitch_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    check-cast v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->createFolder(Lcom/baidu/launcher/data/item/HomeFolderInfo;)Landroid/view/View;

    move-result-object v3

    .line 1468
    .local v3, folderView:Landroid/view/View;
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 1469
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    #calls: Lcom/baidu/launcher/ui/homeview/HomeView;->computeItemPosition(Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    invoke-static {v0, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$800(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 1471
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget v5, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget v6, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_0

    .line 1475
    .end local v3           #folderView:Landroid/view/View;
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 1476
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    #calls: Lcom/baidu/launcher/ui/homeview/HomeView;->computeItemPosition(Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    invoke-static {v0, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$800(Lcom/baidu/launcher/ui/homeview/HomeView;Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 1478
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/HomeView$10;->val$item:Lcom/baidu/launcher/data/item/HomeItemInfo;

    check-cast v0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->bindBaiduWidget(Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;)V

    goto :goto_0

    .line 1451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
