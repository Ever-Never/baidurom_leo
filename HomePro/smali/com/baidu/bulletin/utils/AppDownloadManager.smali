.class public Lcom/baidu/bulletin/utils/AppDownloadManager;
.super Ljava/lang/Object;
.source "AppDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;
    }
.end annotation


# static fields
.field private static final BAIDU_STYLE_LAUNCHER2_APP_DIRECTORY_NAME:Ljava/lang/String; = "app"

.field private static final BAIDU_STYLE_LAUNCHER2_DIRECTORY_NAME:Ljava/lang/String; = "baidu/bulletin"

.field private static final TAG:Ljava/lang/String; = "AppDownloadManager"

.field private static mAppDownloadManager:Lcom/baidu/bulletin/utils/AppDownloadManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mManager:Landroid/app/DownloadManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRepository:Ljava/io/File;

.field private mSavePath:Ljava/io/File;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/baidu/bulletin/utils/AppDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/AppDownloadManager$1;-><init>(Lcom/baidu/bulletin/utils/AppDownloadManager;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mManager:Landroid/app/DownloadManager;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;

    .line 49
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/AppDownloadManager;->createAppDirectory()V

    .line 50
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/utils/AppDownloadManager;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/utils/AppDownloadManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/utils/AppDownloadManager;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private createAppDirectory()V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mRepository:Ljava/io/File;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/io/File;

    const-string v1, "baidu/bulletin"

    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->getDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/bulletin/utils/AppDownloadManager;->getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mRepository:Ljava/io/File;

    .line 58
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mRepository:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mRepository:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mSavePath:Ljava/io/File;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Ljava/io/File;

    const-string v1, "app"

    iget-object v2, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mRepository:Ljava/io/File;

    invoke-direct {p0, v1, v2}, Lcom/baidu/bulletin/utils/AppDownloadManager;->getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mSavePath:Ljava/io/File;

    .line 65
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mSavePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mSavePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 69
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/utils/AppDownloadManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    const-class v1, Lcom/baidu/bulletin/utils/AppDownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mAppDownloadManager:Lcom/baidu/bulletin/utils/AppDownloadManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/baidu/bulletin/utils/AppDownloadManager;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/utils/AppDownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mAppDownloadManager:Lcom/baidu/bulletin/utils/AppDownloadManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mAppDownloadManager:Lcom/baidu/bulletin/utils/AppDownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "parentdirectory"

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, FilePath:Ljava/lang/String;
    return-object v0
.end method

.method private installApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isAppDownload(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, fullName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mSavePath:Ljava/io/File;

    invoke-direct {p0, v1, v2}, Lcom/baidu/bulletin/utils/AppDownloadManager;->getSubdirectoryPath(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "url"
    .parameter "pkgName"

    .prologue
    const/4 v12, 0x0

    .line 72
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v8

    if-nez v8, :cond_0

    .line 73
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    const v10, 0x7f0c027d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 129
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->getAvailableSpace()J

    move-result-wide v8

    const-wide/16 v10, 0x2800

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 80
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    const v10, 0x7f0c027e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 86
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mSavePath:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, destFile:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, tempFile:Ljava/lang/String;
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 89
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;

    .line 90
    .local v5, task:Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;
    invoke-virtual {v5}, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    const v10, 0x7f0c026d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 99
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #task:Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;
    :cond_3
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 100
    const-string v8, "AppDownloadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file exists: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, v0}, Lcom/baidu/bulletin/utils/AppDownloadManager;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    :cond_4
    iget-object v9, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;

    monitor-enter v9

    .line 105
    :try_start_0
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 106
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;

    .line 107
    .restart local v5       #task:Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;
    #getter for: Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->mPkgName:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;->access$000(Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 108
    monitor-exit v9

    goto/16 :goto_0

    .line 112
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #task:Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_6
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v7, tempPkg:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 115
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 117
    :cond_7
    new-instance v1, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 118
    .local v1, down:Landroid/app/DownloadManager$Request;
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 119
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 121
    invoke-virtual {v1, v12}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 122
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 123
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 124
    const-string v8, "AppDownloadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "download filename = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mManager:Landroid/app/DownloadManager;

    invoke-virtual {v8, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    .line 126
    .local v2, downId:J
    iget-object v9, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;

    monitor-enter v9

    .line 127
    :try_start_2
    iget-object v8, p0, Lcom/baidu/bulletin/utils/AppDownloadManager;->mDownloadList:Ljava/util/List;

    new-instance v10, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;

    invoke-direct {v10, p0, v2, v3, v0}, Lcom/baidu/bulletin/utils/AppDownloadManager$DownloadTask;-><init>(Lcom/baidu/bulletin/utils/AppDownloadManager;JLjava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v9

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8
.end method
