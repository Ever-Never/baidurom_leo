.class Lcom/baidu/launcher/ui/homeview/HomeView$6;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/HomeView;->bindItems(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

.field final synthetic val$bindParam:I

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/HomeView;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iput p2, p0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->val$bindParam:I

    iput-object p3, p0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->val$result:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 472
    const-string v3, "HomeView"

    const-string v5, "bindItems run"

    invoke-static {v3, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v1

    .line 474
    .local v1, workspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v15, dockBarInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/data/item/HomeItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object v11, v3

    check-cast v11, Landroid/app/ActivityManager;

    .line 476
    .local v11, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v14

    .line 477
    .local v14, count:I
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ne v14, v3, :cond_1

    .line 478
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->val$bindParam:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    .line 479
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_2

    .line 482
    if-nez v16, :cond_0

    .line 479
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 484
    :cond_0
    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    goto :goto_1

    .line 488
    .end local v16           #i:I
    :cond_1
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->resetScreens()V

    .line 490
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 491
    .local v19, item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    move-object/from16 v0, v19

    iget-wide v12, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->container:J

    .line 492
    .local v12, container:J
    move-object/from16 v0, v19

    iget v3, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->itemType:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 496
    :sswitch_0
    const-wide/16 v5, -0x64

    cmp-long v3, v12, v5

    if-nez v3, :cond_5

    .line 497
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    move-object/from16 v3, v19

    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-virtual {v5, v3}, Lcom/baidu/launcher/ui/homeview/HomeView;->createShortcut(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)Landroid/view/View;

    move-result-object v2

    .line 498
    .local v2, shortcut:Landroid/view/View;
    const-string v3, "\u6613\u9605"

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v11}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v3

    if-nez v3, :cond_3

    .line 501
    :cond_4
    move-object/from16 v0, v19

    iget v3, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    move-object/from16 v0, v19

    iget v4, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    move-object/from16 v0, v19

    iget v5, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_2

    .line 504
    .end local v2           #shortcut:Landroid/view/View;
    :cond_5
    const-wide/16 v5, -0xc8

    cmp-long v3, v12, v5

    if-nez v3, :cond_3

    .line 505
    const-string v3, "DockBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindItems 3: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v3, :cond_3

    .line 507
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    const-string v3, "DockBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindItems 4: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 513
    :sswitch_1
    const v6, 0x7f030057

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    move-object/from16 v5, v19

    check-cast v5, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-static {v6, v7, v3, v5}, Lcom/baidu/launcher/ui/folder/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/launcher/data/item/IFolderInfo;)Lcom/baidu/launcher/ui/folder/FolderIcon;

    move-result-object v4

    .line 517
    .local v4, newFolder:Lcom/baidu/launcher/ui/folder/FolderIcon;
    const-wide/16 v5, -0x64

    cmp-long v3, v12, v5

    if-nez v3, :cond_6

    .line 518
    move-object/from16 v0, v19

    iget v5, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, v1

    invoke-virtual/range {v3 .. v10}, Lcom/baidu/launcher/ui/homeview/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto/16 :goto_2

    .line 522
    :cond_6
    const-wide/16 v5, -0xc8

    cmp-long v3, v12, v5

    if-nez v3, :cond_3

    .line 523
    const-string v3, "DockBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindItems 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v3, :cond_3

    .line 525
    const-string v3, "DockBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindItems 2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v19

    .line 526
    check-cast v18, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 527
    .local v18, info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 532
    .end local v4           #newFolder:Lcom/baidu/launcher/ui/folder/FolderIcon;
    .end local v18           #info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    check-cast v19, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    .end local v19           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->bindAppWidget(Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;)V

    goto/16 :goto_2

    .line 535
    .restart local v19       #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    check-cast v19, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;

    .end local v19           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/baidu/launcher/ui/homeview/HomeView;->bindBaiduWidget(Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;)V

    goto/16 :goto_2

    .line 539
    .end local v12           #container:J
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->val$bindParam:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->val$bindParam:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_9

    .line 541
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #calls: Lcom/baidu/launcher/ui/homeview/HomeView;->checkDockBarInfos(Ljava/util/List;)Ljava/util/List;
    invoke-static {v3, v15}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$500(Lcom/baidu/launcher/ui/homeview/HomeView;Ljava/util/List;)Ljava/util/List;

    move-result-object v15

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    iget-object v3, v3, Lcom/baidu/launcher/ui/homeview/HomeView;->mDockBar:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-virtual {v3, v15}, Lcom/baidu/launcher/ui/homeview/DockBar;->setItems(Ljava/util/List;)V

    .line 544
    :cond_9
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->requestLayout()V

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v5}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    const/4 v5, 0x0

    #setter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mWorkspacedLocked:Z
    invoke-static {v3, v5}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$602(Lcom/baidu/launcher/ui/homeview/HomeView;Z)Z

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    const/4 v5, 0x1

    #setter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mDataLoaded:Z
    invoke-static {v3, v5}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$702(Lcom/baidu/launcher/ui/homeview/HomeView;Z)Z

    .line 549
    const-string v3, "HomeView"

    const-string v5, "bindItems end"

    invoke-static {v3, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/data/HomeDataManager;->clearHomeDataCache()V

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/data/HomeDataManager;->onBusinessChanged()V

    .line 553
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/homeview/HomeView$6;->this$0:Lcom/baidu/launcher/ui/homeview/HomeView;

    #getter for: Lcom/baidu/launcher/ui/homeview/HomeView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/HomeView;->access$100(Lcom/baidu/launcher/ui/homeview/HomeView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->showBulletinScreen()V

    .line 554
    return-void

    .line 492
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x14 -> :sswitch_0
    .end sparse-switch
.end method
