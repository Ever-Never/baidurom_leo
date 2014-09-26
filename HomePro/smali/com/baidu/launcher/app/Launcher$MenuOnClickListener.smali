.class Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/app/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1434
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/app/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1434
    invoke-direct {p0, p1}, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1438
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1560
    :pswitch_0
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1562
    :cond_0
    :goto_0
    return-void

    .line 1440
    :pswitch_1
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1441
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    const v6, 0x7f080109

    new-instance v7, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v7}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    goto :goto_0

    .line 1444
    :pswitch_2
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1450
    new-instance v2, Landroid/content/Intent;

    const-string v5, "baidu.action.wallpaper"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1452
    .local v2, intentWallpaper:Landroid/content/Intent;
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v2, v7}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1455
    .end local v2           #intentWallpaper:Landroid/content/Intent;
    :pswitch_3
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1456
    sget-boolean v5, Lcom/baidu/launcher/app/LauncherApplication;->IS_BAIDU_SYSTEM:Z

    if-eqz v5, :cond_0

    .line 1457
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1458
    .local v1, intent1:Landroid/content/Intent;
    const-string v5, "com.baidu.thememanager.ui"

    const-string v6, "com.baidu.thememanager.ui.BaiduThemeActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v1, v7}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1470
    .end local v1           #intent1:Landroid/content/Intent;
    :pswitch_4
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1471
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$1400(Lcom/baidu/launcher/app/Launcher;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener$1;

    invoke-direct {v6, p0}, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener$1;-><init>(Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1479
    :pswitch_5
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1480
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    #calls: Lcom/baidu/launcher/app/Launcher;->startSetting()V
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$1600(Lcom/baidu/launcher/app/Launcher;)V

    goto :goto_0

    .line 1483
    :pswitch_6
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1484
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1485
    .local v0, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/baidu/launcher/app/LauncherPreference;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1487
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKJBMR1()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1488
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v0}, Lcom/baidu/launcher/app/Launcher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1490
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v0, v7}, Lcom/baidu/launcher/app/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1506
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_7
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1507
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    const v6, 0x7f08017d

    new-instance v7, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v7}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    goto/16 :goto_0

    .line 1510
    :pswitch_8
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1513
    const/4 v5, 0x1

    sput v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 1514
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/applistview/AppListView;->doSort()V

    goto/16 :goto_0

    .line 1517
    :pswitch_9
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1520
    sput v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 1521
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/applistview/AppListView;->doSort()V

    goto/16 :goto_0

    .line 1524
    :pswitch_a
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1526
    const/4 v5, 0x2

    sput v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 1527
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1529
    .local v3, pref_custom:Landroid/content/SharedPreferences;
    if-eqz v3, :cond_2

    .line 1530
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "SORT"

    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1535
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/applistview/AppListView;->enterEditMode()V

    goto/16 :goto_0

    .line 1538
    .end local v3           #pref_custom:Landroid/content/SharedPreferences;
    :pswitch_b
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1539
    const/4 v5, 0x3

    sput v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    .line 1540
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1542
    .local v4, pref_frequency:Landroid/content/SharedPreferences;
    if-eqz v4, :cond_3

    .line 1543
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "SORT"

    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sortType:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1548
    :cond_3
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/applistview/AppListView;->doSort()V

    goto/16 :goto_0

    .line 1551
    .end local v4           #pref_frequency:Landroid/content/SharedPreferences;
    :pswitch_c
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->showMenu(Z)Z

    .line 1552
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$1400(Lcom/baidu/launcher/app/Launcher;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener$2;

    invoke-direct {v6, p0}, Lcom/baidu/launcher/app/Launcher$MenuOnClickListener$2;-><init>(Lcom/baidu/launcher/app/Launcher$MenuOnClickListener;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1438
    nop

    :pswitch_data_0
    .packed-switch 0x7f080182
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
