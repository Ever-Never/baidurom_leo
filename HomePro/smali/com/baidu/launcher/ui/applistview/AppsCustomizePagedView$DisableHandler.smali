.class public Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;
.super Landroid/os/Handler;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisableHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 3679
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 3683
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 3771
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3772
    return-void

    .line 3685
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 3686
    .local v13, listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 3687
    .local v21, selecttion:Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1200(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v7, v0, :cond_0

    .line 3688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1200(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 3689
    .local v5, cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    const/4 v12, 0x0

    .local v12, j:I
    :goto_2
    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_3

    .line 3690
    invoke-virtual {v5, v12}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 3691
    .local v25, v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    .line 3692
    .local v24, tag:Ljava/lang/Object;
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move/from16 v26, v0

    if-eqz v26, :cond_1

    move-object/from16 v9, v24

    .line 3693
    check-cast v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 3694
    .local v9, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v0, v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v26

    iget-object v0, v13, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 3695
    iget-boolean v0, v13, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    move/from16 v26, v0

    move/from16 v0, v26

    iput-boolean v0, v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isDisable:Z

    .line 3696
    iget-boolean v0, v13, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 3697
    const/16 v26, 0x5

    move/from16 v0, v26

    iput v0, v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    .line 3698
    const/16 v26, 0x14

    move/from16 v0, v26

    iput v0, v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->itemType:I

    .line 3703
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1300(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/baidu/launcher/data/DisableDataManager;->updateHomeDataFormSamePackageName(Lcom/baidu/launcher/data/item/HomeShortcutInfo;)V

    .line 3689
    .end local v9           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 3700
    .restart local v9       #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_2
    const/16 v26, 0x4

    move/from16 v0, v26

    iput v0, v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    .line 3701
    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v9, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->itemType:I

    goto :goto_3

    .line 3687
    .end local v9           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .end local v24           #tag:Ljava/lang/Object;
    .end local v25           #v:Landroid/view/View;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 3710
    .end local v5           #cellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;
    .end local v7           #i:I
    .end local v12           #j:I
    .end local v13           #listAppInfo:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v21           #selecttion:Ljava/lang/StringBuilder;
    :pswitch_1
    const-string v20, ""

    .line 3711
    .local v20, packageName:Ljava/lang/String;
    new-instance v4, Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-direct {v4}, Lcom/baidu/launcher/data/item/BaseItemInfo;-><init>()V

    .line 3712
    .local v4, app:Lcom/baidu/launcher/data/item/BaseItemInfo;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 3713
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1200(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/launcher/ui/logic/ViewManager;->getLauncher()Lcom/baidu/launcher/app/Launcher;

    move-result-object v14

    .line 3714
    .local v14, mLauncher:Lcom/baidu/launcher/app/Launcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 3715
    .local v15, mPm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 3716
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4           #app:Lcom/baidu/launcher/data/item/BaseItemInfo;
    check-cast v4, Lcom/baidu/launcher/data/item/ListAppInfo;

    .restart local v4       #app:Lcom/baidu/launcher/data/item/BaseItemInfo;
    move-object/from16 v26, v4

    .line 3717
    check-cast v26, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v26, v4

    .line 3718
    check-cast v26, Lcom/baidu/launcher/data/item/ListAppInfo;

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    .line 3724
    :cond_4
    :goto_4
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v22

    .line 3725
    .local v22, state:I
    const/16 v26, 0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 3726
    const/16 v26, 0x0

    move/from16 v0, v26

    iput-boolean v0, v4, Lcom/baidu/launcher/data/item/BaseItemInfo;->isDisable:Z

    .line 3727
    const/16 v23, 0x1

    .line 3728
    .local v23, success:Z
    invoke-virtual {v14, v10, v4}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    move-result v23

    .line 3729
    if-eqz v23, :cond_0

    .line 3730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1200(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppListView;->updateApps()V

    .line 3731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1400(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10, v4}, Lcom/baidu/launcher/data/DisableDataManager;->updateItemToStart(Landroid/content/Intent;Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 3732
    new-instance v18, Landroid/os/Message;

    invoke-direct/range {v18 .. v18}, Landroid/os/Message;-><init>()V

    .line 3733
    .local v18, msg2:Landroid/os/Message;
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 3734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    move-object/from16 v26, v0

    const-wide/32 v27, 0x493e0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3719
    .end local v18           #msg2:Landroid/os/Message;
    .end local v22           #state:I
    .end local v23           #success:Z
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 3720
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4           #app:Lcom/baidu/launcher/data/item/BaseItemInfo;
    check-cast v4, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .restart local v4       #app:Lcom/baidu/launcher/data/item/BaseItemInfo;
    move-object/from16 v26, v4

    .line 3721
    check-cast v26, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v26, v4

    .line 3722
    check-cast v26, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    goto/16 :goto_4

    .line 3736
    .restart local v22       #state:I
    :cond_6
    const/16 v26, 0x3

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 3737
    new-instance v17, Landroid/os/Message;

    invoke-direct/range {v17 .. v17}, Landroid/os/Message;-><init>()V

    .line 3738
    .local v17, msg1:Landroid/os/Message;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v17

    iput v0, v1, Landroid/os/Message;->what:I

    .line 3739
    move-object/from16 v0, v17

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x1f4

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1200(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/baidu/launcher/ui/homeview/Workspace;->postInvalidate()V

    goto/16 :goto_0

    .line 3745
    .end local v4           #app:Lcom/baidu/launcher/data/item/BaseItemInfo;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v14           #mLauncher:Lcom/baidu/launcher/app/Launcher;
    .end local v15           #mPm:Landroid/content/pm/PackageManager;
    .end local v17           #msg1:Landroid/os/Message;
    .end local v20           #packageName:Ljava/lang/String;
    .end local v22           #state:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1500(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v26

    const-string v27, "isDisable = 0 "

    invoke-virtual/range {v26 .. v27}, Lcom/baidu/launcher/data/DisableDataManager;->getDisableApp(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 3746
    .local v19, notDisableApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3747
    .local v6, counts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 3748
    .local v16, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 3749
    .local v9, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1600(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v0, v9}, Lcom/baidu/launcher/utils/Utilities;->isTopActivity(Landroid/content/Context;Lcom/baidu/launcher/data/item/ListAppInfo;)Z

    move-result v26

    if-nez v26, :cond_7

    .line 3750
    const/16 v26, 0x5

    move/from16 v0, v26

    iput v0, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    .line 3751
    const/16 v26, 0x14

    move/from16 v0, v26

    iput v0, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->itemType:I

    .line 3752
    const/16 v26, 0x1

    move/from16 v0, v26

    iput-boolean v0, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    .line 3753
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1700(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/data/DisableDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/DisableDataManager;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/baidu/launcher/data/DisableDataManager;->addItemToDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 3755
    iget-object v0, v9, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 3758
    .end local v9           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_9

    .line 3759
    new-instance v11, Landroid/content/Intent;

    const-string v26, "com.baidu.appdisable.action.PACKAGES_DISABLE"

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3761
    .local v11, intent2:Landroid/content/Intent;
    const-string v26, "PACKAGES_DISABLE_MAP"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    #getter for: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->mContext:Landroid/content/Context;
    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$1800(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3765
    .end local v11           #intent2:Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v27

    sub-int v26, v26, v27

    if-lez v26, :cond_0

    .line 3766
    new-instance v18, Landroid/os/Message;

    invoke-direct/range {v18 .. v18}, Landroid/os/Message;-><init>()V

    .line 3767
    .restart local v18       #msg2:Landroid/os/Message;
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->what:I

    .line 3768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->disableHandler:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;

    move-object/from16 v26, v0

    const-wide/32 v27, 0x493e0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$DisableHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3683
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
