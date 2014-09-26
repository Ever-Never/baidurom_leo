.class public Lcom/inveno/newpiflow/biz/IqiyiInstallService;
.super Landroid/app/IntentService;
.source "IqiyiInstallService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "IqiyiInstallService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 26
    if-nez p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    const-string v9, "extra_download_id"

    const-wide/16 v10, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 31
    .local v2, downloadId:J
    const-string v9, "download"

    invoke-virtual {p0, v9}, Lcom/inveno/newpiflow/biz/IqiyiInstallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 32
    .local v1, dm:Landroid/app/DownloadManager;
    new-instance v6, Landroid/app/DownloadManager$Query;

    invoke-direct {v6}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 33
    .local v6, query:Landroid/app/DownloadManager$Query;
    const/4 v9, 0x1

    new-array v9, v9, [J

    const/4 v10, 0x0

    aput-wide v2, v9, v10

    invoke-virtual {v6, v9}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1, v6}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 38
    const-string v9, "uri"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, uri:Ljava/lang/String;
    const-string v9, "local_filename"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, localPath:Ljava/lang/String;
    const-string v9, "status"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 42
    .local v7, status:I
    const-string v9, "http://mbdapp.iqiyi.com/j/ap/qiyi.196.apk"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x8

    if-ne v9, v7, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 45
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, intent1:Landroid/content/Intent;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "application/vnd.android.package-archive"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const/high16 v9, 0x1000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v4}, Lcom/inveno/newpiflow/biz/IqiyiInstallService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v4           #intent1:Landroid/content/Intent;
    .end local v5           #localPath:Ljava/lang/String;
    .end local v7           #status:I
    .end local v8           #uri:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v9

    if-eqz v0, :cond_3

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_3
    throw v9
.end method
