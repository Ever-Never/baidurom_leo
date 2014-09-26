.class public Lcom/android/systemui/statusbar/util/TransparentHelper;
.super Ljava/lang/Object;
.source "TransparentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;
    }
.end annotation


# static fields
.field public static final ACTION_SHOW_RECENT:Ljava/lang/String; = "com.android.statusbar.SHOW_RECENT"

.field public static final ACTION_TRANSPARENT:Ljava/lang/String; = "com.android.statusbar.ACTION_TRANSPARENT"

.field public static final ACTION_TRANSPARENT_EXTRA:Ljava/lang/String; = "transparent"

.field public static final ACTION_TRANSPARENT_LOCK_EXTRA:Ljava/lang/String; = "lockstate"

.field public static final ACTION_TRANSPARENT_REASON_EXTRA:Ljava/lang/String; = "reason"

.field public static final BAIDU_LAUNCHER_MAIN_ACTIVITY:Ljava/lang/String; = "com.baidu.launcher.app.Launcher"

.field private static final DEBUG:Z = false

.field private static final DURATION_TIME:I = 0x0

.field private static final KEY_STATUSBAR_TRANSPARENCE:Ljava/lang/String; = "statusbar_transparence"

.field public static final PACKAGE_BAIDU_LAUNCHER:Ljava/lang/String; = "com.baidu.home2"

.field public static final REASON_CALL:Ljava/lang/String; = "call"

.field public static final REASON_HOME:Ljava/lang/String; = "home"

.field public static final REASON_KEYGUARD:Ljava/lang/String; = "keyguard"

.field private static final TAG:Ljava/lang/String; = "TransparentHelper"

.field private static final TASK_HOME_UNTRANSPARENT:I

.field private static instance:Lcom/android/systemui/statusbar/util/TransparentHelper;

.field private static final scales:[F


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHomeTransluentRate:I

.field private mLockState:Z

.field private mPreHomeTransluentRate:I

.field private mPreTransluentRate:I

.field private mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/util/TransparentHelper;->scales:[F

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/util/TransparentHelper;->instance:Lcom/android/systemui/statusbar/util/TransparentHelper;

    return-void

    .line 40
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x33t 0x33t 0x33t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mPreTransluentRate:I

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mLockState:Z

    .line 50
    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "psb"
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mPreTransluentRate:I

    .line 44
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mLockState:Z

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mHandler:Landroid/os/Handler;

    .line 56
    const-string v1, "activity"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mAm:Landroid/app/ActivityManager;

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "statusbar_transparence"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, index:I
    const/high16 v1, 0x437f

    sget-object v2, Lcom/android/systemui/statusbar/util/TransparentHelper;->scales:[F

    aget v2, v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mHomeTransluentRate:I

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/util/TransparentHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mLockState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/util/TransparentHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mHomeTransluentRate:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/util/TransparentHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mHomeTransluentRate:I

    return p1
.end method

.method static synthetic access$200()[F
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/systemui/statusbar/util/TransparentHelper;->scales:[F

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/util/TransparentHelper;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/util/TransparentHelper;->animateTransparent(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/util/TransparentHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mPreHomeTransluentRate:I

    return v0
.end method

.method private animateTransparent(II)V
    .locals 6
    .parameter "tagetTransluentRate"
    .parameter "duration"

    .prologue
    const/4 v5, 0x0

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    .local v0, d:Landroid/graphics/drawable/Drawable;
    int-to-float v1, p1

    const/high16 v2, 0x437f

    sget-object v3, Lcom/android/systemui/statusbar/util/TransparentHelper;->scales:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    sget-object v2, Lcom/android/systemui/statusbar/util/TransparentHelper;->scales:[F

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setAlpha(F)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0202b5

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 188
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mPreTransluentRate:I

    .line 189
    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0202e3

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBackgroundResource(I)V

    .line 186
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mPreTransluentRate:I

    aput v3, v2, v5

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;Landroid/os/Handler;)Lcom/android/systemui/statusbar/util/TransparentHelper;
    .locals 1
    .parameter "psb"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 64
    sget-object v0, Lcom/android/systemui/statusbar/util/TransparentHelper;->instance:Lcom/android/systemui/statusbar/util/TransparentHelper;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/util/TransparentHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/util/TransparentHelper;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/android/systemui/statusbar/util/TransparentHelper;->instance:Lcom/android/systemui/statusbar/util/TransparentHelper;

    .line 67
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/util/TransparentHelper;->instance:Lcom/android/systemui/statusbar/util/TransparentHelper;

    return-object v0
.end method


# virtual methods
.method public isBaiduLauncherOnTop()Z
    .locals 4

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, rst:Z
    const/4 v0, 0x0

    .line 141
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mAm:Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "com.baidu.launcher.app.Launcher"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const/4 v1, 0x1

    .line 150
    :cond_0
    return v1

    .line 142
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setStaturBarTransparent()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 73
    .local v0, kgm:Landroid/app/KeyguardManager;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/util/TransparentHelper;->isBaiduLauncherOnTop()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/util/TransparentHelper;->animateTransparent(II)V

    .line 76
    :cond_0
    return-void
.end method

.method public setStatusBarTransparent(ZZLjava/lang/String;)V
    .locals 10
    .parameter "isTransparent"
    .parameter "lockState"
    .parameter "reason"

    .prologue
    const-wide/16 v8, 0xa0

    const/4 v7, 0x1

    const/high16 v6, 0x437f

    const/4 v5, 0x0

    .line 82
    iget-object v2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "statusbar_transparence"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, index:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 86
    .local v1, kgm:Landroid/app/KeyguardManager;
    const-string v2, "call"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mLockState:Z

    .line 88
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mLockState:Z

    if-eqz v2, :cond_1

    .line 89
    const/16 v2, 0xff

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/statusbar/util/TransparentHelper;->animateTransparent(II)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    sget-object v2, Lcom/android/systemui/statusbar/util/TransparentHelper;->scales:[F

    aget v2, v2, v0

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/statusbar/util/TransparentHelper;->animateTransparent(II)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/util/TransparentHelper$1;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/util/TransparentHelper$1;-><init>(Lcom/android/systemui/statusbar/util/TransparentHelper;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 103
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mLockState:Z

    if-nez v2, :cond_0

    .line 105
    const-string v2, "keyguard"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 106
    if-eqz p1, :cond_4

    .line 107
    iget v2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mHomeTransluentRate:I

    iput v2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mPreHomeTransluentRate:I

    .line 108
    sget-object v2, Lcom/android/systemui/statusbar/util/TransparentHelper;->scales:[F

    aget v2, v2, v0

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-direct {p0, v2, v5}, Lcom/android/systemui/statusbar/util/TransparentHelper;->animateTransparent(II)V

    goto :goto_0

    .line 110
    :cond_4
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mLockState:Z

    .line 111
    new-instance v2, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;-><init>(Lcom/android/systemui/statusbar/util/TransparentHelper;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/util/TransparentHelper$AnimateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    iget-object v2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/util/TransparentHelper$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/util/TransparentHelper$2;-><init>(Lcom/android/systemui/statusbar/util/TransparentHelper;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 118
    :cond_5
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    if-eqz p1, :cond_6

    .line 120
    iget-object v2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/util/TransparentHelper$3;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/util/TransparentHelper$3;-><init>(Lcom/android/systemui/statusbar/util/TransparentHelper;I)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 127
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/util/TransparentHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/util/TransparentHelper$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/util/TransparentHelper$4;-><init>(Lcom/android/systemui/statusbar/util/TransparentHelper;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
