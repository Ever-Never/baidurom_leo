.class Lcom/baidu/launcher/app/Launcher$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/app/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 473
    const-string v5, "scroll_type"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 474
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 476
    .local v4, scrollType:I
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->resetAllChildState(I)V

    .line 477
    sput v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    .line 478
    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->scrollType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 479
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/homeview/Workspace;->setRandEffectStype()V

    .line 542
    .end local v4           #scrollType:I
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    const-string v5, "scale_icon"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 485
    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    const v6, 0x3f895810

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    sget v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    const v6, 0x3f8bda51

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3

    .line 487
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 488
    .local v2, fontScale:F
    cmpl-float v5, v2, v7

    if-lez v5, :cond_3

    .line 489
    const/high16 v5, 0x3f80

    sput v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    .line 490
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 492
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "scale_icon"

    sget v7, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v2           #fontScale:F
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    #setter for: Lcom/baidu/launcher/app/Launcher;->isSelfRecreate:Z
    invoke-static {v5, v8}, Lcom/baidu/launcher/app/Launcher;->access$402(Lcom/baidu/launcher/app/Launcher;Z)Z

    .line 500
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v5}, Lcom/baidu/launcher/app/Launcher;->recreate()V

    goto :goto_0

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "Launcher"

    const-string v6, "Unable to retrieve font size"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 501
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v5, "loop"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 502
    const-string v5, "loop"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->loop:Z

    .line 504
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    #calls: Lcom/baidu/launcher/app/Launcher;->checkReleaseWallpaper()V
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$500(Lcom/baidu/launcher/app/Launcher;)V

    goto :goto_0

    .line 505
    :cond_5
    const-string v5, "app_list_loop"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 506
    const-string v5, "app_list_loop"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->app_list_loop:Z

    .line 508
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v5

    sget-boolean v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->app_list_loop:Z

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/applistview/AppListView;->setLoopScroll(Z)V

    goto/16 :goto_0

    .line 509
    :cond_6
    const-string v5, "inter_loop"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 510
    const-string v5, "inter_loop"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->inter_loop:Z

    .line 511
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getAppListView()Lcom/baidu/launcher/ui/applistview/AppListView;

    move-result-object v5

    sget-boolean v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->inter_loop:Z

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/applistview/AppListView;->setInterLoop(Z)V

    goto/16 :goto_0

    .line 512
    :cond_7
    const-string v5, "slide_wallpaper"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 513
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    .line 515
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    #calls: Lcom/baidu/launcher/app/Launcher;->checkReleaseWallpaper()V
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$500(Lcom/baidu/launcher/app/Launcher;)V

    .line 516
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    .line 517
    .local v0, dragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    if-eqz v0, :cond_0

    .line 518
    sget-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->sildeWallpaper:Z

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->updateWallpaperOffset(Z)V

    goto/16 :goto_0

    .line 520
    .end local v0           #dragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    :cond_8
    const-string v5, "show_icon_floor"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 521
    const-string v5, "show_icon_floor"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_icon_floor:Z

    goto/16 :goto_0

    .line 523
    :cond_9
    const-string v5, "show_dockbar_bg"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 524
    const-string v5, "show_dockbar_bg"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    .line 526
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getmHomeView()Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v5

    sget-boolean v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/homeview/HomeView;->showDockbarBg(Z)V

    goto/16 :goto_0

    .line 527
    :cond_a
    const-string v5, "applist_upload"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 528
    const-string v5, "applist_upload"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->hasApplistUpload:Z

    goto/16 :goto_0

    .line 530
    :cond_b
    const-string v5, "new_version"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 531
    const-string v5, "new_version"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->hasNewVersion:Z

    goto/16 :goto_0

    .line 533
    :cond_c
    const-string v5, "show_dockbar_applist_icon"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 534
    const-string v5, "show_dockbar_applist_icon"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    .line 536
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v5}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->getmHomeView()Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v5

    sget-boolean v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_applist_icon:Z

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/ui/homeview/HomeView;->showDockbarAllAppButtonItem(Z)V

    goto/16 :goto_0

    .line 537
    :cond_d
    const-string v5, "system_persistent"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 538
    const-string v5, "system_persistent"

    iget-object v6, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v6}, Lcom/baidu/launcher/app/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->systemPersistent:Z

    .line 540
    iget-object v5, p0, Lcom/baidu/launcher/app/Launcher$3;->this$0:Lcom/baidu/launcher/app/Launcher;

    sget-boolean v6, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->systemPersistent:Z

    invoke-virtual {v5, v6}, Lcom/baidu/launcher/app/Launcher;->setPersistent(Z)V

    goto/16 :goto_0
.end method
