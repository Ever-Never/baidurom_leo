.class Lcom/baidu/launcher/ui/homeview/Workspace$6;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;->updateItemRemoved(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

.field final synthetic val$changeList:Ljava/util/ArrayList;

.field final synthetic val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/CellLayout;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2833
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iput-object p3, p0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->val$changeList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 2835
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2836
    .local v6, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/16 v18, 0x0

    .line 2837
    .local v18, updateFolder:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v5

    .line 2838
    .local v5, childCount:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_0
    if-ge v12, v5, :cond_9

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 2840
    .local v19, view:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 2841
    .local v16, tag:Lcom/baidu/launcher/data/item/HomeItemInfo;
    if-nez v16, :cond_1

    .line 2838
    .end local v19           #view:Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2842
    .restart local v19       #view:Landroid/view/View;
    :cond_1
    const/4 v14, 0x0

    .line 2843
    .local v14, removed:Z
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->isPreset:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 2844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->val$changeList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 2845
    .local v3, change:Lcom/baidu/launcher/data/item/HomeItemInfo;
    iget-wide v0, v3, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_2

    .line 2846
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/baidu/launcher/data/item/HomeItemInfo;->isPreset:Z

    .line 2850
    .end local v3           #change:Lcom/baidu/launcher/data/item/HomeItemInfo;
    :cond_3
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->isPreset:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 2851
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2852
    const/4 v14, 0x1

    .line 2855
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_4
    if-nez v14, :cond_0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v11, v16

    .line 2856
    check-cast v11, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    .line 2857
    .local v11, info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    invoke-virtual {v11}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v7

    .line 2858
    .local v7, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeShortcutInfo;>;"
    new-instance v17, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2859
    .local v17, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeShortcutInfo;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2860
    .local v8, contentsCount:I
    const/4 v15, 0x0

    .line 2862
    .local v15, removedFromFolder:Z
    const/4 v13, 0x0

    .local v13, k:I
    :goto_2
    if-ge v13, v8, :cond_6

    .line 2863
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 2864
    .local v2, appInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-boolean v0, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 2865
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2866
    const/4 v15, 0x1

    .line 2862
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2870
    .end local v2           #appInfo:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_6
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 2871
    if-eqz v15, :cond_0

    .line 2872
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/baidu/launcher/ui/folder/FolderIcon;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 2873
    check-cast v19, Lcom/baidu/launcher/ui/folder/FolderIcon;

    .end local v19           #view:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/folder/FolderIcon;->updateFolderIcon()V

    .line 2875
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v20, v0

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static/range {v20 .. v20}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$100(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/logic/ViewManager;->getOpenFolder()Lcom/baidu/launcher/ui/folder/Folder;

    move-result-object v9

    .line 2876
    .local v9, folder:Lcom/baidu/launcher/ui/folder/Folder;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/baidu/launcher/ui/folder/Folder;->getInfo()Lcom/baidu/launcher/data/item/IFolderInfo;

    move-result-object v20

    move-object/from16 v0, v20

    if-ne v0, v11, :cond_8

    .line 2877
    invoke-virtual {v9}, Lcom/baidu/launcher/ui/folder/Folder;->notifyDataSetChanged()V

    .line 2879
    :cond_8
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 2886
    .end local v7           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeShortcutInfo;>;"
    .end local v8           #contentsCount:I
    .end local v9           #folder:Lcom/baidu/launcher/ui/folder/Folder;
    .end local v11           #info:Lcom/baidu/launcher/data/item/HomeFolderInfo;
    .end local v13           #k:I
    .end local v14           #removed:Z
    .end local v15           #removedFromFolder:Z
    .end local v16           #tag:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v17           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeShortcutInfo;>;"
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2887
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v5, :cond_b

    .line 2888
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2889
    .local v4, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/homeview/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 2890
    instance-of v0, v4, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 2891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v20, v0

    #getter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mDragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    invoke-static/range {v20 .. v20}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$400(Lcom/baidu/launcher/ui/homeview/Workspace;)Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v20

    check-cast v4, Lcom/baidu/launcher/ui/dragdrop/DropTarget;

    .end local v4           #child:Landroid/view/View;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/baidu/launcher/ui/dragdrop/DragController;->removeDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 2887
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2895
    :cond_b
    if-gtz v5, :cond_c

    if-eqz v18, :cond_d

    .line 2896
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/homeview/CellLayout;->requestLayout()V

    .line 2897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/launcher/ui/homeview/CellLayout;->invalidate()V

    .line 2898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/Workspace$6;->val$layout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/baidu/launcher/ui/homeview/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v21

    const/16 v22, 0x0

    #calls: Lcom/baidu/launcher/ui/homeview/Workspace;->workspaceUpdated(IZ)V
    invoke-static/range {v20 .. v22}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$500(Lcom/baidu/launcher/ui/homeview/Workspace;IZ)V

    .line 2900
    :cond_d
    return-void
.end method
