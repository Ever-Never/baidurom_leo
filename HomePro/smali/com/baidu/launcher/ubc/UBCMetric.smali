.class public Lcom/baidu/launcher/ubc/UBCMetric;
.super Ljava/lang/Object;
.source "UBCMetric.java"


# static fields
.field public static final ABOUT_FOLDER:J = 0x930L

.field public static final ADD_APP_FROM_LAUNCHER:J = 0x916L

.field public static final ADD_APP_IN_ADDMODE:J = 0x925L

.field public static final ADD_NO_APP_SHORTCUT:J = 0x935L

.field public static final ADD_SHORTCUT_TO_DOCK:J = 0x928L

.field public static final ADD_WIDGET:J = 0x931L

.field public static final CATEGORY_SEARCH:Ljava/lang/String; = "searchbox"

.field public static final CATEGORY_THEME:Ljava/lang/String; = "theme"

.field public static final CATEGORY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field public static final CHANGE_LAUNCHER_SORT_TYPE:J = 0x922L

.field public static final CLICK_APPSHOPICON_ON_LAUNCER_TAB:J = 0x578L

.field public static final DELETE_SHORTCUT:J = 0x917L

.field public static final DELETE_SHORTCUT_FROM_DOCK:J = 0x929L

.field public static final DELETE_WIDGET:J = 0x933L

.field public static final ENTER_ADD_MODE:J = 0x924L

.field public static final ENTER_LAUNCHER:J = 0x921L

.field public static final EVENT_ADD:Ljava/lang/String; = "add"

.field public static final EVENT_BROWSE:Ljava/lang/String; = "browse"

.field public static final EVENT_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final EVENT_REMOVE:Ljava/lang/String; = "remove"

.field public static final EVENT_USE:Ljava/lang/String; = "use"

.field protected static FIRST_ADD_MODE:Z = false

.field public static FIRST_EDIT_MODE:Z = false

.field public static final FOLDER_CHANGE_NAME:I = 0x2

.field public static final FOLDER_CREATE:I = 0x0

.field public static final FOLDER_DELETE:I = 0x1

.field public static final FOLDER_OPEN:I = 0x3

.field public static final MOVE_SHORTCUT:J = 0x927L

.field public static final MOVE_WIDGET:J = 0x932L

.field public static final SCREEN_STATUS:J = 0x934L

.field public static final START_APP_FROM_DOCK:J = 0x579L

.field public static final START_APP_FROM_FOLDER:J = 0x908L

.field public static final START_APP_FROM_LAUNCHER:J = 0x919L

.field public static final START_APP_FROM_SHORTCUT:J = 0x920L

.field private static UBC_DBG:Z = false

.field public static final UBC_ID:J = 0x1101L

.field public static final UNINSTALL_APP:J = 0x918L

.field private static sWorker:Landroid/os/Handler;

.field private static sWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    sput-boolean v1, Lcom/baidu/launcher/ubc/UBCMetric;->FIRST_ADD_MODE:Z

    .line 52
    sput-boolean v1, Lcom/baidu/launcher/ubc/UBCMetric;->FIRST_EDIT_MODE:Z

    .line 54
    sput-boolean v1, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    .line 68
    :try_start_0
    const-string v1, "yi.ubc.MetricBuilder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ubc-send"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/baidu/launcher/ubc/UBCMetric;->sWorkerThread:Landroid/os/HandlerThread;

    .line 80
    sget-object v1, Lcom/baidu/launcher/ubc/UBCMetric;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/baidu/launcher/ubc/UBCMetric;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    return-void

    .line 69
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 70
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aboutFolder(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeFolderInfo;I)V
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "type"

    .prologue
    .line 541
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 542
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$18;

    invoke-direct {v1, p2, p1, p0}, Lcom/baidu/launcher/ubc/UBCMetric$18;-><init>(ILcom/baidu/launcher/data/item/HomeFolderInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static addAPPData(Landroid/content/Context;Ljava/lang/String;IIIJ)V
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "id"

    .prologue
    .line 125
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v8, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/launcher/ubc/UBCMetric$3;

    move-wide v1, p5

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/baidu/launcher/ubc/UBCMetric$3;-><init>(JLjava/lang/String;IIILandroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static addAppFromLauncher(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "screen"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 145
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    const-wide/16 v5, 0x916

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/baidu/launcher/ubc/UBCMetric;->addAPPData(Landroid/content/Context;Ljava/lang/String;IIIJ)V

    goto :goto_0
.end method

.method public static addNoAppShortcut(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 348
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 349
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$12;

    invoke-direct {v1, p1, p0}, Lcom/baidu/launcher/ubc/UBCMetric$12;-><init>(Lcom/baidu/launcher/data/item/HomeShortcutInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static addShortcutToDock(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 393
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 394
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$14;

    invoke-direct {v1, p1, p0}, Lcom/baidu/launcher/ubc/UBCMetric$14;-><init>(Ljava/lang/Object;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static addWidget(Landroid/content/Context;Landroid/content/ComponentName;III)V
    .locals 8
    .parameter "context"
    .parameter "provider"
    .parameter "screen"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 301
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v6, 0x931

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Lcom/baidu/launcher/ubc/UBCMetric;->addWidgetData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIJ)V

    goto :goto_0
.end method

.method public static addWidgetData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIJ)V
    .locals 10
    .parameter "context"
    .parameter "packageName"
    .parameter "clzName"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "id"

    .prologue
    .line 306
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 307
    :cond_0
    sget-object v9, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/launcher/ubc/UBCMetric$10;

    move-wide/from16 v1, p6

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/baidu/launcher/ubc/UBCMetric$10;-><init>(JLjava/lang/String;Ljava/lang/String;IIILandroid/content/Context;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static changeLauncherSortType(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "sortType"

    .prologue
    .line 286
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 287
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$9;

    invoke-direct {v1, p1, p0}, Lcom/baidu/launcher/ubc/UBCMetric$9;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static checkAndSubmitMoveShortcut(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 121
    return-void
.end method

.method public static clickAppShopIconOnLauncherTab(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 602
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 603
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$21;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ubc/UBCMetric$21;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static deleteShortcut(Landroid/content/Context;Landroid/content/Intent;IIIIII)V
    .locals 10
    .parameter "context"
    .parameter "intent"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "fscreen"
    .parameter "fx"
    .parameter "fy"

    .prologue
    .line 174
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    if-eqz p1, :cond_0

    .line 176
    sget-object v9, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/launcher/ubc/UBCMetric$5;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/baidu/launcher/ubc/UBCMetric$5;-><init>(Landroid/content/Intent;IIIIIILandroid/content/Context;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static deleteShortcutFromDock(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 150
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    if-eqz p1, :cond_0

    .line 152
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$4;

    invoke-direct {v1, p1, p0}, Lcom/baidu/launcher/ubc/UBCMetric$4;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static enterLauncher(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 561
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 562
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$19;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ubc/UBCMetric$19;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static moveShortcut(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeFolderInfo;Lcom/baidu/launcher/data/item/HomeShortcutInfo;[I[II)V
    .locals 8
    .parameter "context"
    .parameter "finfo"
    .parameter "info"
    .parameter "targetXY"
    .parameter "orgXY"
    .parameter "newScreen"

    .prologue
    .line 491
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 492
    :cond_0
    sget-object v7, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/launcher/ubc/UBCMetric$17;

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v4, p5

    move-object v5, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/launcher/ubc/UBCMetric$17;-><init>(Lcom/baidu/launcher/data/item/HomeShortcutInfo;[ILcom/baidu/launcher/data/item/HomeFolderInfo;I[ILandroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static moveShortcut(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeShortcutInfo;[I[II)V
    .locals 7
    .parameter "context"
    .parameter "info"
    .parameter "targetXY"
    .parameter "orgXY"
    .parameter "newScreen"

    .prologue
    .line 447
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 448
    :cond_0
    sget-object v6, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/launcher/ubc/UBCMetric$16;

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ubc/UBCMetric$16;-><init>(Lcom/baidu/launcher/data/item/HomeShortcutInfo;[II[ILandroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static moveWidget(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;[I)V
    .locals 2
    .parameter "context"
    .parameter "i"
    .parameter "targetXY"

    .prologue
    .line 425
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 426
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$15;

    invoke-direct {v1, p1, p0}, Lcom/baidu/launcher/ubc/UBCMetric$15;-><init>(Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 639
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onPause(Landroid/content/Context;)V

    .line 640
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 632
    invoke-static {p0}, Lcom/baidu/mobstat/StatService;->onResume(Landroid/content/Context;)V

    .line 633
    return-void
.end method

.method public static removeWidget(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;)V
    .locals 2
    .parameter "context"
    .parameter "i"

    .prologue
    .line 326
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 327
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$11;

    invoke-direct {v1, p1, p0}, Lcom/baidu/launcher/ubc/UBCMetric$11;-><init>(Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static screenStatusChange(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "screen"
    .parameter "s"

    .prologue
    .line 375
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 376
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$13;

    invoke-direct {v1, p1, p2, p0}, Lcom/baidu/launcher/ubc/UBCMetric$13;-><init>(IILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "category"
    .parameter "event"

    .prologue
    .line 625
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/mobstat/StatService;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 626
    return-void
.end method

.method public static startApp(Landroid/content/Context;Landroid/content/Intent;IIIJ)V
    .locals 9
    .parameter "context"
    .parameter "intent"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "id"

    .prologue
    .line 229
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    if-eqz p1, :cond_0

    .line 231
    sget-object v8, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/launcher/ubc/UBCMetric$7;

    move-object v1, p1

    move-wide v2, p5

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/baidu/launcher/ubc/UBCMetric$7;-><init>(Landroid/content/Intent;JIIILandroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static startAppFromDock(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 576
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    if-eqz p1, :cond_0

    .line 578
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$20;

    invoke-direct {v1, p1, p0}, Lcom/baidu/launcher/ubc/UBCMetric$20;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static startAppFromFolder(Landroid/content/Context;Landroid/content/Intent;IIIIII)V
    .locals 10
    .parameter "context"
    .parameter "intent"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "fscreen"
    .parameter "fx"
    .parameter "fy"

    .prologue
    .line 256
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    if-eqz p1, :cond_0

    .line 258
    sget-object v9, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/launcher/ubc/UBCMetric$8;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/baidu/launcher/ubc/UBCMetric$8;-><init>(Landroid/content/Intent;IIIIIILandroid/content/Context;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static startAppFromLauncher(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 220
    const-wide/16 v5, 0x919

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/baidu/launcher/ubc/UBCMetric;->startApp(Landroid/content/Context;Landroid/content/Intent;IIIJ)V

    .line 221
    return-void
.end method

.method public static startAppFromShortcut(Landroid/content/Context;Landroid/content/Intent;III)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "screen"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 223
    const-wide/16 v5, 0x920

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/baidu/launcher/ubc/UBCMetric;->startApp(Landroid/content/Context;Landroid/content/Intent;IIIJ)V

    .line 224
    return-void
.end method

.method public static submitStatusChange(Landroid/content/Context;J)V
    .locals 2
    .parameter "c"
    .parameter "statusId"

    .prologue
    .line 101
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 102
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/baidu/launcher/ubc/UBCMetric$2;-><init>(JLandroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V
    .locals 2
    .parameter "c"
    .parameter "id"
    .parameter "data"

    .prologue
    .line 85
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$1;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/baidu/launcher/ubc/UBCMetric$1;-><init>(JLyi/ubc/MetricBuilder;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static uninstallApp(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2
    .parameter "context"
    .parameter "cn"

    .prologue
    .line 203
    sget-boolean v0, Lcom/baidu/launcher/ubc/UBCMetric;->UBC_DBG:Z

    if-eqz v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 204
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ubc/UBCMetric;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ubc/UBCMetric$6;

    invoke-direct {v1, p1, p0}, Lcom/baidu/launcher/ubc/UBCMetric$6;-><init>(Landroid/content/ComponentName;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
