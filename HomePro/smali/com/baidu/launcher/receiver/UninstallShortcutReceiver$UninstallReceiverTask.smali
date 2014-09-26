.class Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;
.super Ljava/lang/Object;
.source "UninstallShortcutReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/receiver/UninstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UninstallReceiverTask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Landroid/content/Intent;

.field final synthetic this$0:Lcom/baidu/launcher/receiver/UninstallShortcutReceiver;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/receiver/UninstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;->this$0:Lcom/baidu/launcher/receiver/UninstallShortcutReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;->context:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;->data:Landroid/content/Intent;

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;->data:Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 48
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;->data:Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 49
    .local v16, name:Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.baidu.appsearch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;->data:Landroid/content/Intent;

    const-string v3, "duplicate"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 55
    .local v9, duplicate:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 57
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz v13, :cond_0

    if-eqz v16, :cond_0

    .line 58
    sget-object v2, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "intent"

    aput-object v5, v3, v4

    const-string v4, "title=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 66
    .local v7, c:Landroid/database/Cursor;
    const-string v2, "intent"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 67
    .local v14, intentIndex:I
    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 69
    .local v12, idIndex:I
    const/4 v8, 0x0

    .line 72
    .local v8, changed:Z
    if-eqz v7, :cond_3

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    :cond_2
    :try_start_1
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 77
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 78
    .local v10, id:J
    const/4 v2, 0x0

    invoke-static {v10, v11, v2}, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v17

    .line 80
    .local v17, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    const/4 v8, 0x1

    .line 82
    if-nez v9, :cond_5

    .line 92
    .end local v10           #id:J
    .end local v17           #uri:Landroid/net/Uri;
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 93
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 94
    const/4 v7, 0x0

    .line 98
    :cond_4
    if-eqz v8, :cond_0

    .line 101
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 102
    .local v15, msg:Landroid/os/Message;
    const/16 v2, 0x66

    iput v2, v15, Landroid/os/Message;->what:I

    .line 103
    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/app/LauncherApplication;

    iget-object v2, v2, Lcom/baidu/launcher/app/LauncherApplication;->handler:Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;

    invoke-virtual {v2, v15}, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 86
    .end local v15           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 89
    :cond_5
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 92
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_6

    .line 93
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 94
    const/4 v7, 0x0

    :cond_6
    throw v2
.end method
