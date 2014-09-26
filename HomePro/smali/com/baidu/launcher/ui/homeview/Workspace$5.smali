.class Lcom/baidu/launcher/ui/homeview/Workspace$5;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

.field final synthetic val$homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;

.field final synthetic val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field final synthetic val$packageNames:Ljava/util/HashSet;

.field final synthetic val$widgets:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/CellLayout;Ljava/util/HashSet;Lcom/baidu/launcher/data/HomeDataManager;Landroid/appwidget/AppWidgetManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2515
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iput-object p3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$packageNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;

    iput-object p5, p0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$widgets:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 2517
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2518
    .local v5, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2519
    const/16 v20, 0x0

    .line 2520
    .local v20, updateFolder:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v4

    .line 2521
    .local v4, childCount:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_0
    if-ge v12, v4, :cond_e

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 2523
    .local v21, view:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .line 2525
    .local v18, tag:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v10, v18

    .line 2526
    check-cast v10, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 2527
    .local v10, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v11, v10, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 2528
    .local v11, intent:Landroid/content/Intent;
    if-nez v11, :cond_1

    const/4 v14, 0x0

    .line 2530
    .local v14, name:Landroid/content/ComponentName;
    :goto_1
    if-eqz v14, :cond_9

    const-string v22, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 2531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2532
    .local v15, packageName:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/baidu/launcher/data/HomeDataManager;->deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 2534
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2528
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #name:Landroid/content/ComponentName;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    goto :goto_1

    .line 2538
    .end local v10           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v11           #intent:Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v10, v18

    .line 2539
    check-cast v10, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 2540
    .local v10, info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-virtual {v10}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v6

    .line 2541
    .local v6, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeShortcutInfo;>;"
    new-instance v19, Ljava/util/ArrayList;

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2543
    .local v19, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2544
    .local v7, contentsCount:I
    const/16 v17, 0x0

    .line 2546
    .local v17, removedFromFolder:Z
    const/4 v13, 0x0

    .local v13, k:I
    :goto_3
    if-ge v13, v7, :cond_6

    .line 2547
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 2548
    .local v2, appInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v11, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 2549
    .restart local v11       #intent:Landroid/content/Intent;
    if-nez v11, :cond_4

    const/4 v14, 0x0

    .line 2551
    .restart local v14       #name:Landroid/content/ComponentName;
    :goto_4
    if-eqz v14, :cond_5

    const-string v22, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 2552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2553
    .restart local v15       #packageName:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 2554
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/data/HomeDataManager;->deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 2556
    const/16 v17, 0x1

    goto :goto_5

    .line 2549
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #name:Landroid/content/ComponentName;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    goto :goto_4

    .line 2546
    .restart local v14       #name:Landroid/content/ComponentName;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2562
    .end local v2           #appInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v14           #name:Landroid/content/ComponentName;
    :cond_6
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2563
    if-eqz v17, :cond_9

    .line 2564
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/baidu/launcher/ui/folder/FolderIcon;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 2565
    check-cast v21, Lcom/baidu/launcher/ui/folder/FolderIcon;

    .end local v21           #view:Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Lcom/baidu/launcher/ui/folder/FolderIcon;->updateFolderIcon()V

    .line 2567
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v22, v0

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static/range {v22 .. v22}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$100(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/baidu/launcher/ui/logic/ViewManager;->getOpenFolder()Lcom/baidu/launcher/ui/folder/Folder;

    move-result-object v8

    .line 2568
    .local v8, folder:Lcom/baidu/launcher/ui/folder/Folder;
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/folder/Folder;->getInfo()Lcom/baidu/launcher/data/item/IFolderInfo;

    move-result-object v22

    move-object/from16 v0, v22

    if-ne v0, v10, :cond_8

    .line 2569
    invoke-virtual {v8}, Lcom/baidu/launcher/ui/folder/Folder;->notifyDataSetChanged()V

    .line 2571
    :cond_8
    const/16 v20, 0x1

    .line 2521
    .end local v6           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeShortcutInfo;>;"
    .end local v7           #contentsCount:I
    .end local v8           #folder:Lcom/baidu/launcher/ui/folder/Folder;
    .end local v10           #info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v13           #k:I
    .end local v17           #removedFromFolder:Z
    .end local v19           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeShortcutInfo;>;"
    :cond_9
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 2573
    .restart local v21       #view:Landroid/view/View;
    :cond_a
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move-object/from16 v10, v18

    .line 2574
    check-cast v10, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    .line 2575
    .local v10, info:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$widgets:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v22, v0

    iget v0, v10, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->appWidgetId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v16

    .line 2577
    .local v16, provider:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v15, v10, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->packageName:Ljava/lang/String;

    .line 2578
    .restart local v15       #packageName:Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 2579
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 2581
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2582
    .local v14, name:Ljava/lang/String;
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 2583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/baidu/launcher/data/HomeDataManager;->deleteItemFromDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;)V

    .line 2584
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2587
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_d
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v22, v0

    check-cast v21, Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;

    .end local v21           #view:Landroid/view/View;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    #calls: Lcom/baidu/launcher/ui/homeview/Workspace;->updateBaiduWidget(Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)V
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$300(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/widget/baidu/BaiduWidgetHostView;)V

    goto :goto_6

    .line 2592
    .end local v18           #tag:Ljava/lang/Object;
    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2593
    const/4 v12, 0x0

    :goto_8
    if-ge v12, v4, :cond_10

    .line 2594
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2595
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 2596
    instance-of v0, v3, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v22, v0

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    invoke-static/range {v22 .. v22}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$400(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v22

    check-cast v3, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    .end local v3           #child:Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 2593
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 2601
    :cond_10
    if-gtz v4, :cond_11

    if-eqz v20, :cond_12

    .line 2602
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/baidu/launcher/ui/homeview/CellLayout;->requestLayout()V

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/baidu/launcher/ui/homeview/CellLayout;->invalidate()V

    .line 2604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$5;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/baidu/launcher/ui/homeview/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v23

    const/16 v24, 0x0

    #calls: Lcom/baidu/launcher/ui/homeview/Workspace;->workspaceUpdated(IZ)V
    invoke-static/range {v22 .. v24}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$500(Lcom/baidu/launcher/ui/homeview/Workspace;IZ)V

    .line 2606
    :cond_12
    return-void
.end method
