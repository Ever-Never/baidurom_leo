.class public Lcom/android/systemui/recent/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;
    }
.end annotation


# static fields
.field public static final CANCEL_PRELOAD_INTENT:Ljava/lang/String; = "com.android.systemui.recent.CANCEL_PRELOAD"

.field public static final CLOSE_RECENTS_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.CLOSE"

.field private static final FIRSTTIME_GUIDE:Ljava/lang/String; = "recent_guide"

.field public static final PRELOAD_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.PRELOAD"

.field public static final PRELOAD_PERMISSION:Ljava/lang/String; = "com.android.systemui.recent.permission.PRELOAD"

.field private static final SCALE:I = 0x6

.field private static final TASK_SCREEN_SHOT:I = 0x1

.field public static final TOGGLE_RECENTS_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.TOGGLE_RECENTS"

.field public static final WAITING_FOR_WINDOW_ANIMATION_PARAM:Ljava/lang/String; = "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

.field private static final WAS_SHOWING:Ljava/lang/String; = "was_showing"

.field public static final WINDOW_ANIMATION_START_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

.field public static mScreenBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mFirstTimeGuide:Landroid/widget/ImageView;

.field private mForeground:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentsBg:Landroid/view/View;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mSharedPre:Landroid/content/SharedPreferences;

.field private mShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Lcom/android/systemui/recent/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsActivity$1;-><init>(Lcom/android/systemui/recent/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    return v0
.end method

.method public static forceOpaqueBackground(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 336
    packed-switch p0, :pswitch_data_0

    .line 344
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 338
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 340
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 342
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleIntent(Landroid/content/Intent;Z)V
    .locals 6
    .parameter "intent"
    .parameter "checkWaitingForAnimationParam"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 260
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 262
    const-string v3, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    .line 268
    .local v0, recentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    if-eqz p2, :cond_2

    const-string v3, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 270
    .local v1, waitingForWindowAnimation:Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->isFirstScreenful()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    goto :goto_0
.end method

.method public static takeScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "mContext"

    .prologue
    .line 290
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 291
    .local v4, mDisplayMatrix:Landroid/graphics/Matrix;
    const-string v11, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 292
    .local v6, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 293
    .local v3, mDisplay:Landroid/view/Display;
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 294
    .local v5, mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 295
    const/4 v11, 0x2

    new-array v2, v11, [F

    const/4 v11, 0x0

    iget v12, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    aput v12, v2, v11

    const/4 v11, 0x1

    iget v12, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    aput v12, v2, v11

    .line 296
    .local v2, dims:[F
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v11

    invoke-static {v11}, Lcom/android/systemui/recent/RecentsActivity;->getDegreesForRotation(I)F

    move-result v1

    .line 297
    .local v1, degrees:F
    const/4 v11, 0x0

    cmpl-float v11, v1, v11

    if-lez v11, :cond_1

    const/4 v8, 0x1

    .line 298
    .local v8, requiresRotation:Z
    :goto_0
    if-eqz v8, :cond_0

    .line 300
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 301
    neg-float v11, v1

    invoke-virtual {v4, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 302
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 303
    const/4 v11, 0x0

    const/4 v12, 0x0

    aget v12, v2, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    aput v12, v2, v11

    .line 304
    const/4 v11, 0x1

    const/4 v12, 0x1

    aget v12, v2, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    aput v12, v2, v11

    .line 307
    :cond_0
    const/4 v11, 0x0

    aget v11, v2, v11

    float-to-int v11, v11

    div-int/lit8 v11, v11, 0x6

    const/4 v12, 0x1

    aget v12, v2, v12

    float-to-int v12, v12

    div-int/lit8 v12, v12, 0x6

    invoke-static {v11, v12}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v11

    sput-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 308
    sget-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v11, :cond_2

    .line 309
    const/4 v11, 0x0

    .line 332
    :goto_1
    return-object v11

    .line 297
    .end local v8           #requiresRotation:Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 314
    .restart local v8       #requiresRotation:Z
    :cond_2
    :try_start_0
    const-string v11, "window"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v10

    .line 315
    .local v10, wms:Landroid/view/IWindowManager;
    invoke-interface {v10}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 316
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 317
    .local v9, rotation:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x105000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 318
    .local v7, nbHeight:I
    if-nez v9, :cond_4

    .line 319
    sget-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v14, v14, 0x6

    iget v15, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v15, v15, 0x6

    div-int/lit8 v16, v7, 0x6

    sub-int v15, v15, v16

    invoke-static {v11, v12, v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    sput-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v7           #nbHeight:I
    .end local v9           #rotation:I
    .end local v10           #wms:Landroid/view/IWindowManager;
    :cond_3
    :goto_2
    sget-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 330
    sget-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 331
    sget-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/16 v12, 0xc

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/android/systemui/recent/Blur;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    sput-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 332
    sget-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 320
    .restart local v7       #nbHeight:I
    .restart local v9       #rotation:I
    .restart local v10       #wms:Landroid/view/IWindowManager;
    :cond_4
    const/4 v11, 0x1

    if-ne v9, v11, :cond_5

    .line 321
    :try_start_1
    sget-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v14, v14, 0x6

    iget v15, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v15, v15, 0x6

    div-int/lit8 v16, v7, 0x6

    sub-int v15, v15, v16

    invoke-static {v11, v12, v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    sput-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 326
    .end local v7           #nbHeight:I
    .end local v9           #rotation:I
    .end local v10           #wms:Landroid/view/IWindowManager;
    :catch_0
    move-exception v11

    goto :goto_2

    .line 322
    .restart local v7       #nbHeight:I
    .restart local v9       #rotation:I
    .restart local v10       #wms:Landroid/view/IWindowManager;
    :cond_5
    const/4 v11, 0x3

    if-ne v9, v11, :cond_3

    .line 323
    sget-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    div-int/lit8 v13, v7, 0x6

    iget v14, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v14, v14, 0x6

    iget v15, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v15, v15, 0x6

    div-int/lit8 v16, v7, 0x6

    sub-int v15, v15, v16

    invoke-static {v11, v12, v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    sput-object v11, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private updateWallpaperVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/high16 v2, 0x10

    .line 135
    if-eqz p1, :cond_1

    move v1, v2

    .line 136
    .local v1, wpflags:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 138
    .local v0, curflags:I
    if-eq v1, v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 141
    :cond_0
    return-void

    .line 135
    .end local v0           #curflags:I
    .end local v1           #wpflags:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissAndGoBack()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 188
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v2, :cond_1

    .line 189
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 191
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 195
    .local v1, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v3, v2}, Lcom/android/systemui/recent/RecentsPanelView;->simulateClick(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_0
    return-void

    .line 200
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 202
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->finish()V

    goto :goto_0
.end method

.method public dismissAndGoHome()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v1, :cond_0

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    .local v0, homeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 185
    .end local v0           #homeIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method isActivityShowing()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    return v0
.end method

.method isForeground()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 174
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 207
    const v1, 0x7f040027

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->setContentView(I)V

    .line 208
    const v1, 0x7f09009b

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 209
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v2, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;-><init>(Lcom/android/systemui/recent/RecentsActivity;Lcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    const v1, 0x7f0900a0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsBg:Landroid/view/View;

    .line 226
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    .line 227
    .local v0, recentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 228
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setMinSwipeAlpha(F)V

    .line 231
    if-eqz p1, :cond_0

    const-string v1, "was_showing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/recent/RecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    .line 235
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 236
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recent/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 240
    return-void

    .line 233
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 249
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 252
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recent/RecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    .line 257
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    const v0, 0x7f050007

    const v1, 0x7f050008

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/RecentsActivity;->overridePendingTransition(II)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    .line 165
    sget-object v0, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsBg:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Lcom/android/systemui/recent/RecentsActivity;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 169
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 244
    const-string v0, "was_showing"

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 150
    invoke-static {p0}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->updateWallpaperVisibility(Z)V

    .line 155
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    .line 156
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 159
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 160
    return-void

    .line 153
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsActivity;->updateWallpaperVisibility(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    .line 128
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 131
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 132
    return-void
.end method
