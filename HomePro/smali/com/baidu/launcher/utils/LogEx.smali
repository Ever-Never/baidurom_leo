.class public Lcom/baidu/launcher/utils/LogEx;
.super Ljava/lang/Object;
.source "LogEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/utils/LogEx$LogEntryWriterThread;,
        Lcom/baidu/launcher/utils/LogEx$LogEntry;
    }
.end annotation


# static fields
.field public static final BATCH_SIZE:I = 0x14

.field public static final CRASH_TAG:Ljava/lang/String; = "Crash"

.field public static final DEBUG:I = 0x3

.field public static DEFAULT_LOG_LEVEL:I = 0x0

.field public static final ERROR:I = 0x6

.field public static EXCEPTION_HANDLER_ENABLE:Z = false

.field public static final INFO:I = 0x4

.field public static final LOG_DIR:Ljava/lang/String; = "BaiduHome2"

.field public static final LOG_NAME:Ljava/lang/String; = "log.txt"

.field public static SAVE_TO_FILE:Z = false

.field public static final TAG:Ljava/lang/String; = "Baidu Home2"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static sFlushNow:Z

.field private static sLogEntryQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/baidu/launcher/utils/LogEx$LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogFile:Ljava/io/File;

.field private static final sStringBuilder:Ljava/lang/StringBuilder;

.field private static final sTimestamp:Ljava/sql/Timestamp;

.field private static sWriterThreadExit:Z

.field private static stackTraceDeep:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 47
    sput-boolean v1, Lcom/baidu/launcher/utils/LogEx;->SAVE_TO_FILE:Z

    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/baidu/launcher/utils/LogEx;->DEFAULT_LOG_LEVEL:I

    .line 57
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/launcher/utils/LogEx;->EXCEPTION_HANDLER_ENABLE:Z

    .line 70
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/LogEx;->sLogEntryQueue:Ljava/util/concurrent/BlockingQueue;

    .line 75
    sput-boolean v1, Lcom/baidu/launcher/utils/LogEx;->sWriterThreadExit:Z

    .line 77
    sput-boolean v1, Lcom/baidu/launcher/utils/LogEx;->sFlushNow:Z

    .line 81
    const/4 v0, 0x7

    sput v0, Lcom/baidu/launcher/utils/LogEx;->stackTraceDeep:I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/LogEx;->sStringBuilder:Ljava/lang/StringBuilder;

    .line 91
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    sput-object v0, Lcom/baidu/launcher/utils/LogEx;->sTimestamp:Ljava/sql/Timestamp;

    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/baidu/launcher/utils/LogEx;->sWriterThreadExit:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/baidu/launcher/utils/LogEx;->sLogEntryQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/baidu/launcher/utils/LogEx;->writeLogEntryToFileByBatch(I)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/baidu/launcher/utils/LogEx;->sFlushNow:Z

    return v0
.end method

.method public static clear()V
    .locals 2

    .prologue
    .line 467
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/launcher/utils/LogEx;->sWriterThreadExit:Z

    .line 468
    sget-object v0, Lcom/baidu/launcher/utils/LogEx;->sLogEntryQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 469
    sget-object v0, Lcom/baidu/launcher/utils/LogEx;->sStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 470
    return-void
.end method

.method public static collectApplicationCrash()V
    .locals 2

    .prologue
    .line 438
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 440
    .local v0, originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/baidu/launcher/utils/LogEx$1;

    invoke-direct {v1, v0}, Lcom/baidu/launcher/utils/LogEx$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 450
    return-void
.end method

.method private static collectLogEntry(Lcom/baidu/launcher/utils/LogEx$LogEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 273
    :try_start_0
    sget-object v1, Lcom/baidu/launcher/utils/LogEx;->sLogEntryQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "aTag"
    .parameter "aMsg"

    .prologue
    .line 115
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "aTag"
    .parameter "aMsg"
    .parameter "aThrowable"

    .prologue
    .line 119
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    return-void
.end method

.method public static debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "aTag"
    .parameter "aMsg"
    .parameter "aThrowable"

    .prologue
    .line 159
    const-string v0, "Baidu Home2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    return-void
.end method

.method public static debugInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "aTag"
    .parameter "aMsg"

    .prologue
    .line 155
    const-string v0, "Baidu Home2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "aTag"
    .parameter "aMsg"

    .prologue
    .line 139
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "aTag"
    .parameter "aMsg"
    .parameter "aThrowable"

    .prologue
    .line 143
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method

.method public static enter()V
    .locals 6

    .prologue
    .line 241
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 242
    .local v3, stack:[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_0

    const/4 v4, 0x2

    array-length v5, v3

    if-le v4, v5, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 247
    .local v2, s:Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_0

    .line 248
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, className:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, methodName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "====>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized flush()V
    .locals 2

    .prologue
    .line 457
    const-class v0, Lcom/baidu/launcher/utils/LogEx;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/baidu/launcher/utils/LogEx;->sFlushNow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit v0

    return-void

    .line 457
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAppInfo()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 410
    sget-object v6, Lcom/baidu/launcher/utils/LogEx;->sContext:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_1

    .line 430
    .local v1, ct:Landroid/content/Context;
    :cond_0
    :goto_0
    return-object v5

    .line 413
    .end local v1           #ct:Landroid/content/Context;
    :cond_1
    sget-object v6, Lcom/baidu/launcher/utils/LogEx;->sContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 414
    .restart local v1       #ct:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 418
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 419
    .local v3, info:Landroid/content/pm/PackageInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t(versionName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t(versionCode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 425
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 426
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLogLevel(I)Ljava/lang/String;
    .locals 1
    .parameter "aLogLevel"

    .prologue
    .line 393
    packed-switch p0, :pswitch_data_0

    .line 405
    const-string v0, "V"

    :goto_0
    return-object v0

    .line 395
    :pswitch_0
    const-string v0, "V"

    goto :goto_0

    .line 397
    :pswitch_1
    const-string v0, "D"

    goto :goto_0

    .line 399
    :pswitch_2
    const-string v0, "I"

    goto :goto_0

    .line 401
    :pswitch_3
    const-string v0, "W"

    goto :goto_0

    .line 403
    :pswitch_4
    const-string v0, "E"

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getTimestamp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    sget-object v0, Lcom/baidu/launcher/utils/LogEx;->sTimestamp:Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/sql/Timestamp;->setTime(J)V

    .line 298
    sget-object v0, Lcom/baidu/launcher/utils/LogEx;->sTimestamp:Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "aTag"
    .parameter "aMsg"

    .prologue
    .line 123
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "aTag"
    .parameter "aMsg"
    .parameter "aThrowable"

    .prologue
    .line 127
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/baidu/launcher/utils/LogEx;->sContext:Ljava/lang/ref/WeakReference;

    .line 104
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .parameter "aLevel"

    .prologue
    .line 367
    const/4 v0, 0x6

    if-ne v0, p0, :cond_0

    .line 368
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardAvaible()Z
    .locals 2

    .prologue
    .line 383
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static leave()V
    .locals 6

    .prologue
    .line 258
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 259
    .local v3, stack:[Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_0

    const/4 v4, 0x2

    array-length v5, v3

    if-le v4, v5, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 264
    .local v2, s:Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_0

    .line 265
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, className:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, methodName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "aLogLevel"
    .parameter "aTag"
    .parameter "aMessage"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    return-void
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "aLogLevel"
    .parameter "aTag"
    .parameter "aMessage"
    .parameter "aThrowable"

    .prologue
    .line 190
    invoke-static {p0}, Lcom/baidu/launcher/utils/LogEx;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    packed-switch p0, :pswitch_data_0

    .line 208
    const-string v1, "Baidu Home2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    :goto_0
    sget-object v1, Lcom/baidu/launcher/utils/LogEx;->sStringBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 212
    if-eqz p2, :cond_0

    .line 213
    sget-object v1, Lcom/baidu/launcher/utils/LogEx;->sStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_0
    if-eqz p3, :cond_1

    .line 217
    sget-object v1, Lcom/baidu/launcher/utils/LogEx;->sStringBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_1
    sget-boolean v1, Lcom/baidu/launcher/utils/LogEx;->SAVE_TO_FILE:Z

    if-eqz v1, :cond_2

    .line 222
    new-instance v0, Lcom/baidu/launcher/utils/LogEx$LogEntry;

    invoke-direct {v0}, Lcom/baidu/launcher/utils/LogEx$LogEntry;-><init>()V

    .line 223
    .local v0, entry:Lcom/baidu/launcher/utils/LogEx$LogEntry;
    iput p0, v0, Lcom/baidu/launcher/utils/LogEx$LogEntry;->logLevel:I

    .line 224
    iput-object p1, v0, Lcom/baidu/launcher/utils/LogEx$LogEntry;->tag:Ljava/lang/String;

    .line 225
    sget-object v1, Lcom/baidu/launcher/utils/LogEx;->sStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/utils/LogEx$LogEntry;->msg:Ljava/lang/String;

    .line 226
    invoke-static {v0}, Lcom/baidu/launcher/utils/LogEx;->collectLogEntry(Lcom/baidu/launcher/utils/LogEx$LogEntry;)V

    .line 229
    .end local v0           #entry:Lcom/baidu/launcher/utils/LogEx$LogEntry;
    :cond_2
    return-void

    .line 193
    :pswitch_0
    const-string v1, "Baidu Home2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 196
    :pswitch_1
    const-string v1, "Baidu Home2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 199
    :pswitch_2
    const-string v1, "Baidu Home2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 202
    :pswitch_3
    const-string v1, "Baidu Home2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 205
    :pswitch_4
    const-string v1, "Baidu Home2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static myLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "aTag"
    .parameter "aMsg"

    .prologue
    .line 151
    const-string v0, "Baidu Home2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public static printTrace(Ljava/lang/String;)V
    .locals 5
    .parameter "aTag"

    .prologue
    .line 163
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 164
    .local v2, stack:[Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_0

    const/4 v3, 0x2

    array-length v4, v2

    if-le v3, v4, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v1, sStringBuilder:Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    sget v3, Lcom/baidu/launcher/utils/LogEx;->stackTraceDeep:I

    if-ge v0, v3, :cond_2

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v3, "==>>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_2
    if-eqz v1, :cond_0

    .line 175
    const-string v3, "Baidu Home2"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "aTag"
    .parameter "aMsg"

    .prologue
    .line 107
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "aTag"
    .parameter "aMsg"
    .parameter "aThrowable"

    .prologue
    .line 111
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "aTag"
    .parameter "aMsg"

    .prologue
    .line 131
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "aTag"
    .parameter "aMsg"
    .parameter "aThrowable"

    .prologue
    .line 135
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/baidu/launcher/utils/LogEx;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    return-void
.end method

.method private static writeLogEntryToFileByBatch(I)V
    .locals 10
    .parameter "aBatchSize"

    .prologue
    .line 305
    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->isSDCardAvaible()Z

    move-result v7

    if-nez v7, :cond_0

    .line 353
    :goto_0
    return-void

    .line 309
    :cond_0
    :try_start_0
    sget-object v7, Lcom/baidu/launcher/utils/LogEx;->sLogFile:Ljava/io/File;

    if-nez v7, :cond_2

    .line 310
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "BaiduHome2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 313
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 316
    :cond_1
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "log.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/baidu/launcher/utils/LogEx;->sLogFile:Ljava/io/File;

    .line 319
    .end local v3           #dir:Ljava/io/File;
    :cond_2
    sget-object v7, Lcom/baidu/launcher/utils/LogEx;->sLogFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 320
    sget-object v7, Lcom/baidu/launcher/utils/LogEx;->sLogFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_3
    const/4 v1, 0x0

    .line 332
    .local v1, buf:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    sget-object v8, Lcom/baidu/launcher/utils/LogEx;->sLogFile:Ljava/io/File;

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    .line 334
    .end local v1           #buf:Ljava/io/BufferedWriter;
    .local v2, buf:Ljava/io/BufferedWriter;
    :try_start_2
    sget-object v7, Lcom/baidu/launcher/utils/LogEx;->sLogEntryQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    if-le v7, p0, :cond_4

    move v0, p0

    .line 335
    .local v0, N:I
    :goto_1
    const/4 v5, 0x0

    .line 336
    .local v5, entry:Lcom/baidu/launcher/utils/LogEx$LogEntry;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v0, :cond_5

    .line 337
    sget-object v7, Lcom/baidu/launcher/utils/LogEx;->sLogEntryQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #entry:Lcom/baidu/launcher/utils/LogEx$LogEntry;
    check-cast v5, Lcom/baidu/launcher/utils/LogEx$LogEntry;

    .line 338
    .restart local v5       #entry:Lcom/baidu/launcher/utils/LogEx$LogEntry;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v5, Lcom/baidu/launcher/utils/LogEx$LogEntry;->logLevel:I

    invoke-static {v8}, Lcom/baidu/launcher/utils/LogEx;->getLogLevel(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/baidu/launcher/utils/LogEx;->getTimestamp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/baidu/launcher/utils/LogEx$LogEntry;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/baidu/launcher/utils/LogEx$LogEntry;->msg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 340
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7

    .line 336
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 323
    .end local v0           #N:I
    .end local v2           #buf:Ljava/io/BufferedWriter;
    .end local v5           #entry:Lcom/baidu/launcher/utils/LogEx$LogEntry;
    .end local v6           #i:I
    :catch_0
    move-exception v4

    .line 324
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 334
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #buf:Ljava/io/BufferedWriter;
    :cond_4
    :try_start_3
    sget-object v7, Lcom/baidu/launcher/utils/LogEx;->sLogEntryQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7

    move-result v0

    goto :goto_1

    .line 349
    .restart local v0       #N:I
    .restart local v5       #entry:Lcom/baidu/launcher/utils/LogEx$LogEntry;
    .restart local v6       #i:I
    :cond_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v2

    .line 351
    .end local v2           #buf:Ljava/io/BufferedWriter;
    .restart local v1       #buf:Ljava/io/BufferedWriter;
    goto/16 :goto_0

    .line 350
    .end local v1           #buf:Ljava/io/BufferedWriter;
    .restart local v2       #buf:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v7

    move-object v1, v2

    .line 352
    .end local v2           #buf:Ljava/io/BufferedWriter;
    .restart local v1       #buf:Ljava/io/BufferedWriter;
    goto/16 :goto_0

    .line 343
    .end local v0           #N:I
    .end local v5           #entry:Lcom/baidu/launcher/utils/LogEx$LogEntry;
    .end local v6           #i:I
    :catch_2
    move-exception v4

    .line 344
    .restart local v4       #e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 349
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 350
    :catch_3
    move-exception v7

    goto/16 :goto_0

    .line 345
    .end local v4           #e:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 346
    .local v4, e:Ljava/lang/InterruptedException;
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 349
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 350
    :catch_5
    move-exception v7

    goto/16 :goto_0

    .line 348
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v7

    .line 349
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 351
    :goto_6
    throw v7

    .line 350
    :catch_6
    move-exception v8

    goto :goto_6

    .line 348
    .end local v1           #buf:Ljava/io/BufferedWriter;
    .restart local v2       #buf:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #buf:Ljava/io/BufferedWriter;
    .restart local v1       #buf:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 345
    .end local v1           #buf:Ljava/io/BufferedWriter;
    .restart local v2       #buf:Ljava/io/BufferedWriter;
    :catch_7
    move-exception v4

    move-object v1, v2

    .end local v2           #buf:Ljava/io/BufferedWriter;
    .restart local v1       #buf:Ljava/io/BufferedWriter;
    goto :goto_4

    .line 343
    .end local v1           #buf:Ljava/io/BufferedWriter;
    .restart local v2       #buf:Ljava/io/BufferedWriter;
    :catch_8
    move-exception v4

    move-object v1, v2

    .end local v2           #buf:Ljava/io/BufferedWriter;
    .restart local v1       #buf:Ljava/io/BufferedWriter;
    goto :goto_3
.end method
