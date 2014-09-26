.class public Lcom/baidu/launcher/update/UpdateManager;
.super Landroid/content/BroadcastReceiver;
.source "UpdateManager.java"

# interfaces
.implements Lyi/util/AppUpdateHelper$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;
    }
.end annotation


# static fields
.field protected static final CONNECTION_ERROR:I = 0x3

.field private static final DIALOG_UPDATE_CONFIRM:I = 0x0

.field private static final NOTIFICATION_UPDATE_CONFIRM:I = 0x1

.field private static final NO_NEW_VERSION_UPDATE:I = 0x2

.field private static final UPDATE_WARN_NOTIFICATION_ID:I = 0x186a1

.field private static mHelper:Lyi/util/AppUpdateHelper;

.field private static mUpdateManager:Lcom/baidu/launcher/update/UpdateManager;


# instance fields
.field private mCallback:Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;

.field private mCheckType:I

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;

.field private mCurrentVersion:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInfo:Lyi/util/AppUpdateHelper$AppUpdateInfo;

.field private mNewVersion:Ljava/lang/String;

.field private mNotifyManager:Landroid/app/NotificationManager;

.field private mSaveName:Ljava/lang/String;

.field private mSavePath:Ljava/lang/String;

.field private mTargetMarket:Ljava/lang/String;

.field public mUpdateing:Z

.field private mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mUpdateing:Z

    .line 46
    iput v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I

    .line 52
    invoke-static {}, Lcom/baidu/launcher/utils/StorageUtil;->getVersionUpdateFileDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mSavePath:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/baidu/launcher/update/UpdateManager$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/update/UpdateManager$1;-><init>(Lcom/baidu/launcher/update/UpdateManager;)V

    iput-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/baidu/launcher/update/UpdateManager$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/update/UpdateManager$2;-><init>(Lcom/baidu/launcher/update/UpdateManager;)V

    iput-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mCallback:Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;

    .line 150
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    .line 151
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mNotifyManager:Landroid/app/NotificationManager;

    .line 153
    invoke-static {p1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mCurrentVersion:Ljava/lang/String;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/update/UpdateManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/update/UpdateManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/update/UpdateManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/update/UpdateManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/baidu/launcher/update/UpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateManager;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/baidu/launcher/update/UpdateManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mSaveName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/baidu/launcher/update/UpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateManager;->mSaveName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/update/UpdateManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mTargetMarket:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/baidu/launcher/update/UpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateManager;->mTargetMarket:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/baidu/launcher/update/UpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateManager;->mNewVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/baidu/launcher/update/UpdateManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/baidu/launcher/update/UpdateManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateManager;->mSavePath:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getInastance(Landroid/content/Context;)Lcom/baidu/launcher/update/UpdateManager;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 227
    const-class v1, Lcom/baidu/launcher/update/UpdateManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/update/UpdateManager;->mUpdateManager:Lcom/baidu/launcher/update/UpdateManager;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/baidu/launcher/update/UpdateManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/update/UpdateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/update/UpdateManager;->mUpdateManager:Lcom/baidu/launcher/update/UpdateManager;

    .line 230
    :cond_0
    invoke-static {p0}, Lyi/util/AppUpdateHelper;->instance(Landroid/content/Context;)Lyi/util/AppUpdateHelper;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/update/UpdateManager;->mHelper:Lyi/util/AppUpdateHelper;

    .line 232
    sget-object v0, Lcom/baidu/launcher/update/UpdateManager;->mUpdateManager:Lcom/baidu/launcher/update/UpdateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkUpdate(I)V
    .locals 9
    .parameter "aCheckType"

    .prologue
    const/4 v8, 0x1

    .line 343
    iget-boolean v3, p0, Lcom/baidu/launcher/update/UpdateManager;->mUpdateing:Z

    if-eqz v3, :cond_1

    .line 344
    iget-object v3, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0c020b

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    if-nez p1, :cond_2

    .line 347
    iget-object v3, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 348
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "cancel_update_time"

    const-wide/16 v6, 0x0

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 349
    .local v0, elapsedTime:J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "cancel_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    const-wide/32 v3, 0x2932e00

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 360
    .end local v0           #elapsedTime:J
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/update/UpdateManager;->setCheckType(I)V

    .line 362
    sget-object v3, Lcom/baidu/launcher/update/UpdateManager;->mHelper:Lyi/util/AppUpdateHelper;

    iget-object v4, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->getChannelID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lyi/util/AppUpdateHelper;->setChannelId(Ljava/lang/String;)V

    .line 364
    sget-object v3, Lcom/baidu/launcher/update/UpdateManager;->mHelper:Lyi/util/AppUpdateHelper;

    invoke-virtual {v3, v8, p0}, Lyi/util/AppUpdateHelper;->checkUpdateAsync(ZLyi/util/AppUpdateHelper$UpdateListener;)Lyi/util/AppUpdateHelper$AppUpdateCheckTask;

    move-result-object v3

    invoke-virtual {v3}, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;->run()V

    goto :goto_0
.end method

.method public getCheckType()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I

    return v0
.end method

.method public getmCallback()Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mCallback:Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;

    return-object v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public onCheckUpdateResult(Lyi/util/AppUpdateHelper$AppUpdateInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 238
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateManager;->mInfo:Lyi/util/AppUpdateHelper$AppUpdateInfo;

    .line 239
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mInfo:Lyi/util/AppUpdateHelper$AppUpdateInfo;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mInfo:Lyi/util/AppUpdateHelper$AppUpdateInfo;

    iget v1, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    sparse-switch v1, :sswitch_data_0

    .line 283
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mInfo:Lyi/util/AppUpdateHelper$AppUpdateInfo;

    iget v1, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    if-nez v1, :cond_5

    .line 292
    :cond_1
    :goto_1
    return-void

    .line 243
    :sswitch_0
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mInfo:Lyi/util/AppUpdateHelper$AppUpdateInfo;

    iget-object v1, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mMd5:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mInfo:Lyi/util/AppUpdateHelper$AppUpdateInfo;

    iget-object v1, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mUrl:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 244
    :cond_2
    iget v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I

    if-ne v1, v3, :cond_0

    .line 245
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 246
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 247
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 253
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    const-string v2, "new_version"

    invoke-static {v1, v2, v3}, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->setBooleanToDefaultPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 255
    iget-object v1, p1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mUrl:Ljava/lang/String;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mSaveName:Ljava/lang/String;

    .line 257
    iget-object v1, p1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mVersionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mNewVersion:Ljava/lang/String;

    .line 259
    iget v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I

    if-nez v1, :cond_4

    .line 260
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 261
    .restart local v0       #msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 262
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 263
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    iget v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I

    if-ne v1, v3, :cond_0

    .line 264
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 265
    .restart local v0       #msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 266
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 270
    .end local v0           #msg:Landroid/os/Message;
    :sswitch_1
    iget v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I

    if-ne v1, v3, :cond_0

    .line 271
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 272
    .restart local v0       #msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 273
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 285
    .end local v0           #msg:Landroid/os/Message;
    :cond_5
    iget v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I

    if-ne v1, v3, :cond_1

    .line 286
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mInfo:Lyi/util/AppUpdateHelper$AppUpdateInfo;

    iget v1, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 287
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 288
    .restart local v0       #msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 289
    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 240
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onComeBackHome()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 374
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.baidu.launcher.update_confirm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 102
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 103
    iget-object v2, p0, Lcom/baidu/launcher/update/UpdateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public selectMarket([Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "aMarkets"

    .prologue
    const/4 v7, 0x0

    .line 313
    if-nez p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-object v7

    .line 316
    :cond_1
    iget-object v8, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 317
    .local v6, pm:Landroid/content/pm/PackageManager;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 319
    .local v5, pk:Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 320
    .local v3, info:Landroid/content/pm/PackageInfo;
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto :goto_0

    .line 321
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 317
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected sendConfirmNotification()V
    .locals 15

    .prologue
    const/4 v8, 0x0

    .line 157
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, notificationTitle:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/utils/StorageUtil;->getVersionUpdateFileDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mSavePath:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadFileManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadFileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/update/UpdateManager;->mUrl:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/launcher/update/UpdateManager;->mSavePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/update/UpdateManager;->mSaveName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application"

    const-string v6, ""

    const/4 v7, 0x1

    const/4 v9, 0x2

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/launcher/network/http/DownloadFileManager;->insertTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)J

    .line 164
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.baidu.launcher.update_confirm"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v10, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v10, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 167
    .local v13, pendingIntent:Landroid/app/PendingIntent;
    new-instance v12, Landroid/app/Notification;

    invoke-direct {v12}, Landroid/app/Notification;-><init>()V

    .line 168
    .local v12, notify:Landroid/app/Notification;
    const v0, 0x7f02031e

    iput v0, v12, Landroid/app/Notification;->icon:I

    .line 169
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 170
    const/16 v0, 0x10

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 171
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 172
    .local v14, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 173
    .local v11, msg:Ljava/lang/String;
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v0, v14, v11, v13}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 174
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager;->mNotifyManager:Landroid/app/NotificationManager;

    const v1, 0x186a1

    invoke-virtual {v0, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 175
    return-void
.end method

.method public setCheckType(I)V
    .locals 0
    .parameter "aCheckType"

    .prologue
    .line 299
    iput p1, p0, Lcom/baidu/launcher/update/UpdateManager;->mCheckType:I

    .line 300
    return-void
.end method

.method public setmContext(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method protected showConfirmDialod()V
    .locals 5

    .prologue
    .line 178
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    const v3, 0x1030132

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 179
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c0099

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0c009e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/update/UpdateManager;->mCurrentVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0c009f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/update/UpdateManager;->mNewVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00a0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    const v2, 0x7f0c009b

    new-instance v3, Lcom/baidu/launcher/update/UpdateManager$3;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/update/UpdateManager$3;-><init>(Lcom/baidu/launcher/update/UpdateManager;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 212
    const v2, 0x7f0c009a

    new-instance v3, Lcom/baidu/launcher/update/UpdateManager$4;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/update/UpdateManager$4;-><init>(Lcom/baidu/launcher/update/UpdateManager;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/update/UpdateManager;->mConfirmDialog:Landroid/app/Dialog;

    .line 221
    iget-object v2, p0, Lcom/baidu/launcher/update/UpdateManager;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 222
    iget-object v2, p0, Lcom/baidu/launcher/update/UpdateManager;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f020424

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 223
    iget-object v2, p0, Lcom/baidu/launcher/update/UpdateManager;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 224
    return-void
.end method

.method public updateFromMarket(Ljava/lang/String;)Z
    .locals 5
    .parameter "aMarketPackageName"

    .prologue
    .line 331
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 332
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 333
    .local v0, data:Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 334
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    iget-object v3, p0, Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    const/4 v3, 0x1

    .line 338
    .end local v0           #data:Landroid/net/Uri;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
