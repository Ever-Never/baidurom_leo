.class public Lcom/baidu/launcher/network/http/DownloadNotifManager;
.super Ljava/lang/Object;
.source "DownloadNotifManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/network/http/DownloadNotifManager$DownloadReceiver;,
        Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DownloadNotification"

.field private static mInstance:Lcom/baidu/launcher/network/http/DownloadNotifManager;


# instance fields
.field mContext:Landroid/content/Context;

.field private mFailNotifMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressNotifMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessNotifMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mProgressNotifMap:Ljava/util/HashMap;

    .line 66
    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mSuccessNotifMap:Ljava/util/HashMap;

    .line 67
    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mFailNotifMap:Ljava/util/HashMap;

    .line 68
    return-void
.end method

.method private addNotification(JLjava/lang/String;Landroid/content/Intent;Ljava/util/HashMap;)V
    .locals 2
    .parameter "id"
    .parameter "title"
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p5, notifMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;>;"
    if-nez p5, :cond_0

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_0
    if-nez p4, :cond_1

    .line 192
    new-instance p4, Landroid/content/Intent;

    .end local p4
    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 194
    .restart local p4
    :cond_1
    new-instance v0, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;

    invoke-direct {v0}, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;-><init>()V

    .line 195
    .local v0, item:Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;
    #setter for: Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mTitle:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->access$002(Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    iput-object p4, v0, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mIntent:Landroid/content/Intent;

    .line 197
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 57
    const-class v1, Lcom/baidu/launcher/network/http/DownloadNotifManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mInstance:Lcom/baidu/launcher/network/http/DownloadNotifManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/network/http/DownloadNotifManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mInstance:Lcom/baidu/launcher/network/http/DownloadNotifManager;

    .line 60
    :cond_0
    sget-object v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mInstance:Lcom/baidu/launcher/network/http/DownloadNotifManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addNotification(JZLandroid/content/Intent;ZLandroid/content/Intent;ZLandroid/content/Intent;)V
    .locals 13
    .parameter "aId"
    .parameter "aShowProgressNotif"
    .parameter "aProgressIntent"
    .parameter "aShowSuccessNotif"
    .parameter "aSuccessIntent"
    .parameter "aShowFailNotif"
    .parameter "aFailIntent"

    .prologue
    .line 119
    const-string v1, "DownloadNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_8

    .line 122
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v3, v1

    .line 126
    .local v3, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, selection:Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "_id DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 131
    .local v11, cursor:Landroid/database/Cursor;
    const-string v8, ""

    .local v8, title:Ljava/lang/String;
    const-string v12, ""

    .line 133
    .local v12, mime_type:Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "title"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 135
    const-string v1, "mime_type"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 139
    :cond_0
    if-eqz v11, :cond_1

    .line 140
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_1
    if-eqz p3, :cond_4

    .line 144
    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mProgressNotifMap:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mProgressNotifMap:Ljava/util/HashMap;

    .line 147
    :cond_2
    if-nez p4, :cond_3

    .line 148
    new-instance p4, Landroid/content/Intent;

    .end local p4
    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/baidu/launcher/ui/common/DownloadAlert;

    move-object/from16 v0, p4

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .restart local p4
    const-string v1, "extra_title"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v1, "extra_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x1000

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    :cond_3
    iget-object v10, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mProgressNotifMap:Ljava/util/HashMap;

    move-object v5, p0

    move-wide v6, p1

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->addNotification(JLjava/lang/String;Landroid/content/Intent;Ljava/util/HashMap;)V

    .line 156
    :cond_4
    if-eqz p5, :cond_6

    .line 157
    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mSuccessNotifMap:Ljava/util/HashMap;

    if-nez v1, :cond_5

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mSuccessNotifMap:Ljava/util/HashMap;

    .line 160
    :cond_5
    iget-object v10, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mSuccessNotifMap:Ljava/util/HashMap;

    move-object v5, p0

    move-wide v6, p1

    move-object/from16 v9, p6

    invoke-direct/range {v5 .. v10}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->addNotification(JLjava/lang/String;Landroid/content/Intent;Ljava/util/HashMap;)V

    .line 163
    :cond_6
    if-eqz p7, :cond_8

    .line 164
    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mFailNotifMap:Ljava/util/HashMap;

    if-nez v1, :cond_7

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mFailNotifMap:Ljava/util/HashMap;

    .line 167
    :cond_7
    iget-object v10, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mFailNotifMap:Ljava/util/HashMap;

    move-object v5, p0

    move-wide v6, p1

    move-object/from16 v9, p8

    invoke-direct/range {v5 .. v10}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->addNotification(JLjava/lang/String;Landroid/content/Intent;Ljava/util/HashMap;)V

    .line 170
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #mime_type:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method public cancelCompleteNotif(J)V
    .locals 2
    .parameter "aId"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mSuccessNotifMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mSuccessNotifMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mSuccessNotifMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mFailNotifMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mFailNotifMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mFailNotifMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_1
    return-void
.end method

.method public canlelNotif(J)V
    .locals 3
    .parameter "aId"

    .prologue
    .line 247
    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mProgressNotifMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mProgressNotifMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mProgressNotifMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 253
    .local v0, nm:Landroid/app/NotificationManager;
    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 254
    return-void
.end method

.method public showProgressNotifAtOnce(J)V
    .locals 7
    .parameter "aId"

    .prologue
    .line 178
    invoke-static {}, Lcom/baidu/launcher/utils/StorageUtil;->IsSdCardMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    const-string v0, "DownloadNotification"

    const-string v1, "sd card not mounted or network not connected"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_1
    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->updateProgressNotification(JJJ)V

    goto :goto_0
.end method

.method public updateCompletedNotification(JI)V
    .locals 16
    .parameter "aId"
    .parameter "aResult"

    .prologue
    .line 266
    invoke-virtual/range {p0 .. p2}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->canlelNotif(J)V

    .line 268
    const/4 v10, 0x3

    move/from16 v0, p3

    if-eq v0, v10, :cond_0

    const/4 v10, 0x4

    move/from16 v0, p3

    if-ne v0, v10, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const/4 v5, 0x0

    .line 274
    .local v5, notifMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;>;"
    if-nez p3, :cond_6

    .line 275
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mSuccessNotifMap:Ljava/util/HashMap;

    .line 280
    :cond_2
    :goto_1
    if-eqz v5, :cond_0

    .line 283
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;

    .line 284
    .local v3, ni:Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;
    if-eqz v3, :cond_5

    .line 285
    const-string v9, ""

    .local v9, ticker:Ljava/lang/String;
    const-string v8, ""

    .line 286
    .local v8, text:Ljava/lang/String;
    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_7

    .line 287
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0c00d0

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 288
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->access$000(Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00d0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 295
    :cond_3
    :goto_2
    const v2, 0x7f02031e

    .line 296
    .local v2, iconResource:I
    new-instance v6, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v6, v2, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 298
    .local v6, notification:Landroid/app/Notification;
    const/16 v10, 0x10

    iput v10, v6, Landroid/app/Notification;->flags:I

    .line 299
    const/4 v7, 0x0

    .line 300
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    iget-object v10, v3, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mIntent:Landroid/content/Intent;

    if-eqz v10, :cond_4

    .line 301
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mIntent:Landroid/content/Intent;

    const/high16 v13, 0x800

    invoke-static {v10, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 304
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    #getter for: Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->access$000(Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11, v8, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 308
    .local v4, nm:Landroid/app/NotificationManager;
    move-wide/from16 v0, p1

    long-to-int v10, v0

    invoke-virtual {v4, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 310
    .end local v2           #iconResource:I
    .end local v4           #nm:Landroid/app/NotificationManager;
    .end local v6           #notification:Landroid/app/Notification;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    .end local v8           #text:Ljava/lang/String;
    .end local v9           #ticker:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p2}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->cancelCompleteNotif(J)V

    goto/16 :goto_0

    .line 276
    .end local v3           #ni:Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;
    :cond_6
    const/4 v10, 0x1

    move/from16 v0, p3

    if-ne v0, v10, :cond_2

    .line 277
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mFailNotifMap:Ljava/util/HashMap;

    goto/16 :goto_1

    .line 290
    .restart local v3       #ni:Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;
    .restart local v8       #text:Ljava/lang/String;
    .restart local v9       #ticker:Ljava/lang/String;
    :cond_7
    if-nez p3, :cond_3

    .line 291
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    const v11, 0x7f0c00ce

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 292
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->access$000(Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00ce

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2
.end method

.method public updateProgressNotification(JJJ)V
    .locals 14
    .parameter "aId"
    .parameter "total"
    .parameter "current"

    .prologue
    .line 202
    iget-object v9, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mProgressNotifMap:Ljava/util/HashMap;

    if-nez v9, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v7, -0x1

    .line 205
    .local v7, progress:I
    const-wide/16 v9, 0x0

    cmp-long v9, p3, v9

    if-lez v9, :cond_2

    .line 206
    cmp-long v9, p3, p5

    if-lez v9, :cond_2

    .line 207
    const-wide/16 v9, 0x64

    mul-long v9, v9, p5

    div-long v9, v9, p3

    long-to-int v7, v9

    .line 210
    :cond_2
    if-ltz v7, :cond_0

    .line 214
    iget-object v9, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mProgressNotifMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;

    .line 215
    .local v4, ni:Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;
    if-eqz v4, :cond_0

    .line 217
    const v3, 0x7f02031e

    .line 218
    .local v3, iconResource:I
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 220
    .local v6, notif:Landroid/app/Notification;
    iget-object v9, v4, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mIntent:Landroid/content/Intent;

    const-string v10, "extra_progress"

    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iget-object v9, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    iget-object v11, v4, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mIntent:Landroid/content/Intent;

    const/high16 v12, 0x800

    invoke-static {v9, v10, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 224
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iput v3, v6, Landroid/app/Notification;->icon:I

    .line 225
    iget-object v9, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00cc

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    #getter for: Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->access$000(Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 226
    iput-object v0, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 227
    const/16 v9, 0x12

    iput v9, v6, Landroid/app/Notification;->flags:I

    .line 229
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v9, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f030079

    invoke-direct {v1, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 230
    .local v1, contentView:Landroid/widget/RemoteViews;
    const v9, 0x7f080198

    #getter for: Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->mTitle:Ljava/lang/String;
    invoke-static {v4}, Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;->access$000(Lcom/baidu/launcher/network/http/DownloadNotifManager$NotificationItem;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 231
    const v9, 0x7f08019b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 232
    const v9, 0x7f08019a

    const/16 v10, 0x64

    const/4 v11, 0x0

    invoke-virtual {v1, v9, v10, v7, v11}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 233
    const v9, 0x7f080197

    invoke-virtual {v1, v9, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 235
    const/4 v9, 0x3

    invoke-static {v9}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 236
    .local v2, df:Ljava/text/DateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, time:Ljava/lang/String;
    const v9, 0x7f080199

    invoke-virtual {v1, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 239
    iput-object v1, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 241
    iget-object v9, p0, Lcom/baidu/launcher/network/http/DownloadNotifManager;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 242
    .local v5, nm:Landroid/app/NotificationManager;
    long-to-int v9, p1

    invoke-virtual {v5, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
