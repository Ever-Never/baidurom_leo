.class public Lcom/baidu/launcher/thememanager/network/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# static fields
.field public static final ACTION_DOWNLOAD_STATE_CHANGE:Ljava/lang/String; = "com.baidu.thememanager.action.downloadstatechange"

.field public static final DEFAULT_INT:I = -0x1

.field public static final DEFAULT_LONG:J = -0x1L

.field public static final DOWNLOAD_ID:I = 0xfffe

.field public static final DOWNLOAD_RESULT_ID:I = 0x2710

.field public static final EXTRA_CONTENT:Ljava/lang/String; = "com.baidu.thememanager.extra.content"

.field public static final EXTRA_CURRENT:Ljava/lang/String; = "com.baidu.thememanager.extra.current"

.field public static final EXTRA_DLID:Ljava/lang/String; = "com.baidu.thememanager.extra.dlid"

.field public static final EXTRA_PATH:Ljava/lang/String; = "com.baidu.thememanager.extra.path"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "com.baidu.thememanager.extra.progress"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "com.baidu.thememanager.extra.status"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "com.baidu.thememanager.extra.title"

.field public static final EXTRA_TOTAL:Ljava/lang/String; = "com.baidu.thememanager.extra.total"

.field public static final EXTRA_URL:Ljava/lang/String; = "com.baidu.thememanager.extra.url"

.field public static final FILE_PROFIX:Ljava/lang/String; = "file://"

.field private static final TAG:Ljava/lang/String; = "DownloadUtil"

.field private static final mAllowedNetworkTypes:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAllDownloadWithNotice(Landroid/content/Context;)V
    .locals 6
    .parameter "ctx"

    .prologue
    .line 610
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getUnfinishedDownloadIdList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 611
    .local v0, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 612
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 613
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 614
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static {p0, v3, v4, v5}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownloadWithNotice(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 618
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->resetDownloadState(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 619
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.baidu.thememanager.action.downloadstatechange"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 621
    return-void
.end method

.method public static cancelDownload(Landroid/content/Context;J)V
    .locals 7
    .parameter "ctx"
    .parameter "downloadId"

    .prologue
    const-wide/16 v3, 0x0

    .line 580
    const-wide/16 v5, -0x1

    cmp-long v0, v5, p1

    if-eqz v0, :cond_0

    .line 581
    invoke-static {p0, p1, p2}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadUrlById(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, url:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->stopTask(Landroid/content/Context;J)V

    .line 585
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v0

    const/4 v2, 0x2

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->updateDownload(Ljava/lang/String;IJJ)V

    .line 587
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static cancelDownloadWithNotice(Landroid/content/Context;JZ)V
    .locals 3
    .parameter "ctx"
    .parameter "downloadId"
    .parameter "sendNotif"

    .prologue
    .line 596
    invoke-static {p0, p1, p2}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownload(Landroid/content/Context;J)V

    .line 597
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.baidu.thememanager.action.downloadstatechange"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 600
    if-eqz p3, :cond_0

    .line 601
    invoke-static {p0, p1, p2}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadTitleById(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, title:Ljava/lang/String;
    long-to-int v2, p1

    invoke-static {p0, v1, v2}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->sendDownloadFailNoti(Landroid/content/Context;Ljava/lang/String;I)V

    .line 604
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static clearUnfinishDownloadTask(Landroid/content/Context;)V
    .locals 9
    .parameter "ctx"

    .prologue
    .line 632
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getUnfinishedDownloadIdList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 634
    .local v4, unFinishedDownloadList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 635
    .local v2, id:Ljava/lang/Long;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 636
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "status"

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const-string v6, "_id=?"

    .line 638
    .local v6, whereStr:Ljava/lang/String;
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    .line 641
    .local v3, selectArray:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v5, v6, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #id:Ljava/lang/Long;
    .end local v3           #selectArray:[Ljava/lang/String;
    .end local v5           #values:Landroid/content/ContentValues;
    .end local v6           #whereStr:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 645
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 647
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :cond_0
    return-void
.end method

.method private static correctDownloadById(Landroid/content/Context;J)V
    .locals 5
    .parameter "ctx"
    .parameter "downloadId"

    .prologue
    .line 87
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadThemeManager;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->stopTask(Landroid/content/Context;J)V

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "_id=?"

    .line 90
    .local v1, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 93
    .local v2, selectionArgs:[Ljava/lang/String;
    sget-object v3, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method private static formatPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 678
    move-object v0, p0

    .line 679
    .local v0, newPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 680
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    :cond_0
    return-object v0
.end method

.method private static formatPath2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 688
    move-object v0, p0

    .line 689
    .local v0, newPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 690
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "file://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 692
    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 695
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getActiveDownload(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "ctx"
    .parameter "mimeType"

    .prologue
    .line 103
    const-class v10, Lcom/baidu/launcher/thememanager/network/DownloadUtil;

    monitor-enter v10

    const/4 v9, 0x0

    .line 104
    .local v9, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v1

    .line 108
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "mime_type=? AND status=?"

    .line 110
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v4, v1

    const/4 v1, 0x1

    const/16 v5, 0x69

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 116
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "DownloadUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "downloading count = "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 122
    .local v8, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 127
    .end local v8           #id:I
    :cond_0
    if-eqz v6, :cond_1

    .line 128
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :cond_1
    :goto_0
    monitor-exit v10

    return-object v9

    .line 124
    :catch_0
    move-exception v7

    .line 125
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    if-eqz v6, :cond_1

    .line 128
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 103
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1

    .line 127
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v6, :cond_2

    .line 128
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static getDownloadIDByUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .parameter "ctx"
    .parameter "url"
    .parameter "mimeType"

    .prologue
    .line 286
    const/4 v6, 0x0

    .line 287
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 289
    .local v7, dlId:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 290
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v1

    .line 293
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "mime_type=? AND url=?"

    .line 295
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    .line 298
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 300
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v7, v1

    goto :goto_0

    .line 308
    :cond_0
    if-eqz v6, :cond_1

    .line 309
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 311
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_1
    :goto_1
    return-wide v7

    .line 305
    :catch_0
    move-exception v9

    .line 306
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    if-eqz v6, :cond_1

    .line 309
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 308
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 309
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getDownloadIdByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 10
    .parameter "ctx"
    .parameter "path"
    .parameter "mime_type"

    .prologue
    .line 322
    const/4 v6, 0x0

    .line 323
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 325
    .local v7, dlId:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v1

    .line 329
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "mime_type=? AND dest=?"

    .line 331
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    .line 334
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 336
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v7, v1

    goto :goto_0

    .line 344
    :cond_0
    if-eqz v6, :cond_1

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 347
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_1
    :goto_1
    return-wide v7

    .line 341
    :catch_0
    move-exception v9

    .line 342
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    if-eqz v6, :cond_1

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 344
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getDownloadIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getDownloadInfoById(Landroid/content/Context;JLjava/lang/String;)Ljava/util/List;
    .locals 19
    .parameter "context"
    .parameter "download_id"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    const/4 v9, 0x0

    .line 397
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v14, 0x2

    .line 398
    .local v14, status:I
    const/4 v15, 0x0

    .line 399
    .local v15, title:Ljava/lang/String;
    const/16 v18, 0x0

    .line 400
    .local v18, url:Ljava/lang/String;
    const/4 v11, 0x0

    .line 401
    .local v11, path:Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 402
    .local v16, total:J
    const-wide/16 v7, 0x0

    .line 403
    .local v7, current:J
    const/4 v13, 0x0

    .line 406
    .local v13, ret:Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 407
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "status"

    aput-object v6, v3, v2

    const/4 v2, 0x1

    const-string v6, "title"

    aput-object v6, v3, v2

    const/4 v2, 0x2

    const-string v6, "url"

    aput-object v6, v3, v2

    const/4 v2, 0x3

    const-string v6, "dest"

    aput-object v6, v3, v2

    const/4 v2, 0x4

    const-string v6, "current_size"

    aput-object v6, v3, v2

    const/4 v2, 0x5

    const-string v6, "total_size"

    aput-object v6, v3, v2

    .line 413
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "mime_type=? AND _id=?"

    .line 415
    .local v4, selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v5, v2

    const/4 v2, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 419
    .local v5, selectionArgs:[Ljava/lang/String;
    sget-object v2, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 421
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    :cond_0
    const-string v2, "status"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 425
    const-string v2, "title"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 427
    const-string v2, "url"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 429
    const-string v2, "dest"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 431
    const-string v2, "total_size"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 433
    const-string v2, "current_size"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 435
    const/4 v13, 0x1

    .line 438
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 443
    :cond_1
    if-eqz v9, :cond_2

    .line 444
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 447
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v12, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-static {v11}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->formatPath2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    return-object v12

    .line 440
    .end local v12           #result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v10

    .line 441
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    if-eqz v9, :cond_2

    .line 444
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 443
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_3

    .line 444
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static getDownloadStateByUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "ctx"
    .parameter "url"
    .parameter "mimeType"

    .prologue
    .line 142
    const/4 v6, 0x0

    .line 143
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 145
    .local v10, state:I
    const-string v1, "wallpaper"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getWallpaperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 151
    .local v9, filePath:Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    .line 153
    .local v7, downloadId:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "status"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "_id"

    aput-object v5, v2, v1

    .line 157
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "mime_type=? AND url=?"

    .line 159
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    .line 162
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 164
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 168
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_1

    .line 148
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v7           #downloadId:I
    .end local v9           #filePath:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/baidu/launcher/thememanager/util/Utils;->getPathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #filePath:Ljava/lang/String;
    goto :goto_0

    .line 172
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #downloadId:I
    :cond_1
    if-nez v10, :cond_2

    .line 173
    :try_start_1
    invoke-static {v9}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isPathExists(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 180
    const/4 v10, -0x1

    .line 187
    :cond_2
    if-eqz v6, :cond_3

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_3
    :goto_2
    return v10

    .line 184
    :catch_0
    move-exception v8

    .line 185
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    if-eqz v6, :cond_3

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 187
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static getDownloadTitleById(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "ctx"
    .parameter "downloadId"

    .prologue
    .line 358
    const/4 v6, 0x0

    .line 359
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 361
    .local v8, title:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 362
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v2, v1

    .line 365
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "mime_type=? AND _id=?"

    .line 367
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "theme/ICON"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 370
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 372
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 381
    :cond_0
    if-eqz v6, :cond_1

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 384
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 378
    :catch_0
    move-exception v7

    .line 379
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    if-eqz v6, :cond_1

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 381
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getDownloadUrlById(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "aContext"
    .parameter "aDownloadId"

    .prologue
    .line 202
    const/4 v6, 0x0

    .line 203
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 205
    .local v9, url:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 206
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "url"

    aput-object v3, v2, v1

    .line 210
    .local v2, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mime_type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "theme/ICON"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mime_type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "wallpaper"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\')"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 225
    .local v8, sb:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 227
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 236
    :cond_0
    if-eqz v6, :cond_1

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 239
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-object v9

    .line 233
    :catch_0
    move-exception v7

    .line 234
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    if-eqz v6, :cond_1

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 236
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getDownloadUrlByPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ctx"
    .parameter "path"

    .prologue
    .line 250
    const/4 v6, 0x0

    .line 251
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 253
    .local v8, url:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 254
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "url"

    aput-object v5, v2, v1

    .line 257
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "mime_type=? AND dest=?"

    .line 259
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "theme/ICON"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    .line 262
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 264
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 272
    :cond_0
    if-eqz v6, :cond_1

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v8

    .line 269
    :catch_0
    move-exception v7

    .line 270
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    if-eqz v6, :cond_1

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 272
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static getUnfinishedDownloadIdList(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 466
    const/4 v6, 0x0

    .line 467
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v7, dlIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 470
    .local v9, resolver:Landroid/content/ContentResolver;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 473
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme/ICON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 492
    .local v10, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 495
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 501
    .end local v2           #projection:[Ljava/lang/String;
    .end local v9           #resolver:Landroid/content/ContentResolver;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 502
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    if-eqz v6, :cond_0

    .line 505
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 507
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    return-object v7

    .line 504
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v9       #resolver:Landroid/content/ContentResolver;
    .restart local v10       #sb:Ljava/lang/StringBuilder;
    :cond_1
    if-eqz v6, :cond_0

    .line 505
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 504
    .end local v2           #projection:[Ljava/lang/String;
    .end local v9           #resolver:Landroid/content/ContentResolver;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 505
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static removeUselessFile(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 668
    const/4 v1, 0x0

    .line 669
    .local v1, rst:Z
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->formatPath2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 670
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 671
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 674
    :cond_0
    return v1
.end method

.method public static requestDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "ctx"
    .parameter "url"
    .parameter "destfile"
    .parameter "title"

    .prologue
    .line 62
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v0, "DownloadUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add download = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadThemeManager;

    move-result-object v0

    const-string v4, "theme/ICON"

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xb

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->insertTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)J

    .line 71
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v0

    const/16 v2, 0x65

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->updateDownload(Ljava/lang/String;IJJ)V

    .line 73
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.baidu.thememanager.action.downloadstatechange"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v10, intent_state:Landroid/content/Intent;
    invoke-virtual {p0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadThemeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->startNextTask(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static sendDownloadFailNoti(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9
    .parameter "ctx"
    .parameter "strTitle"
    .parameter "downloadId"

    .prologue
    const/4 v8, 0x1

    .line 518
    const v4, 0x7f02031e

    .line 519
    .local v4, icon:I
    if-eqz p1, :cond_0

    .line 521
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .local v6, it:Landroid/content/Intent;
    const v0, 0x7f0c00cf

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, ticker:Ljava/lang/String;
    move-object v2, p1

    .line 524
    .local v2, title:Ljava/lang/String;
    const v0, 0x7f0c00d0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v6, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v0, "fragment_index"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    const/high16 v0, 0x2400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 528
    add-int/lit16 v5, p2, 0x2710

    const/high16 v7, 0x800

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;->showNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;I)V

    .line 535
    .end local v1           #ticker:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    .end local v6           #it:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static sendDownloadSuccessNoti(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "ctx"
    .parameter "theme_id"
    .parameter "theme_title"
    .parameter "filePath"

    .prologue
    .line 548
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.baidu.thememanager.action.downloadstatechange"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, p3}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadUrlByPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, url:Ljava/lang/String;
    const-string v3, "theme/ICON"

    invoke-static {p0, p3, v3}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadIdByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    .line 551
    .local v0, downloadId:I
    const-string v3, "com.baidu.thememanager.extra.url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string v3, "com.baidu.thememanager.extra.filepath"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v3, "com.baidu.thememanager.extra.status"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    const-string v3, "com.baidu.thememanager.extra.insertresult"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 576
    return-void
.end method

.method public static startDownloadWallpaper(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;I)V
    .locals 12
    .parameter "aContext"
    .parameter "aWallpaperItem"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 709
    if-nez p1, :cond_0

    .line 724
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getWallpaperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 715
    .local v3, path:Ljava/lang/String;
    const-string v0, "wallpaper"

    invoke-static {p0, v3, v0}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadIdByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 716
    .local v10, dlId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_1

    .line 717
    invoke-static {p0, v10, v11}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->correctDownloadById(Landroid/content/Context;J)V

    .line 720
    :cond_1
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadThemeManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "wallpaper"

    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getmCategoryName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x14

    move-object v1, p0

    invoke-virtual/range {v0 .. v9}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->insertTaskWithStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)J

    goto :goto_0
.end method
