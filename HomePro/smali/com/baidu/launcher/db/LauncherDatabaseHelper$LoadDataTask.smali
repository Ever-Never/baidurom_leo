.class Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "LauncherDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/db/LauncherDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final TASK_LOAD_DATA:I = 0x0

.field public static final TAST_LOAD_DISABLE_DATA:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/db/LauncherDatabaseHelper;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/db/LauncherDatabaseHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;->this$0:Lcom/baidu/launcher/db/LauncherDatabaseHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/db/LauncherDatabaseHelper;Lcom/baidu/launcher/db/LauncherDatabaseHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;-><init>(Lcom/baidu/launcher/db/LauncherDatabaseHelper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 775
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 782
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 801
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 784
    :pswitch_0
    const-string v0, "LauncherDatabaseHelper"

    const-string v1, "load favorites data in sub thread"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;->this$0:Lcom/baidu/launcher/db/LauncherDatabaseHelper;

    #getter for: Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->access$200(Lcom/baidu/launcher/db/LauncherDatabaseHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_load_favorites"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 789
    iget-object v1, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;->this$0:Lcom/baidu/launcher/db/LauncherDatabaseHelper;

    aget-object v0, p1, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/baidu/launcher/db/LauncherDatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v1, v0}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->access$300(Lcom/baidu/launcher/db/LauncherDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 790
    iget-object v0, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;->this$0:Lcom/baidu/launcher/db/LauncherDatabaseHelper;

    #getter for: Lcom/baidu/launcher/db/LauncherDatabaseHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->access$200(Lcom/baidu/launcher/db/LauncherDatabaseHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_load_favorites"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 792
    iget-object v1, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;->this$0:Lcom/baidu/launcher/db/LauncherDatabaseHelper;

    aget-object v0, p1, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/baidu/launcher/db/LauncherDatabaseHelper;->isDisableEmpty(Landroid/database/sqlite/SQLiteDatabase;)Z
    invoke-static {v1, v0}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->access$400(Lcom/baidu/launcher/db/LauncherDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    new-instance v1, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;

    iget-object v0, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;->this$0:Lcom/baidu/launcher/db/LauncherDatabaseHelper;

    invoke-direct {v1, v0}, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;-><init>(Lcom/baidu/launcher/db/LauncherDatabaseHelper;)V

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    aget-object v0, p1, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 797
    :pswitch_1
    const-string v0, "LauncherDatabaseHelper"

    const-string v1, "load disable data in sub thread"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v1, p0, Lcom/baidu/launcher/db/LauncherDatabaseHelper$LoadDataTask;->this$0:Lcom/baidu/launcher/db/LauncherDatabaseHelper;

    aget-object v0, p1, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    #calls: Lcom/baidu/launcher/db/LauncherDatabaseHelper;->loadDisable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v1, v0}, Lcom/baidu/launcher/db/LauncherDatabaseHelper;->access$500(Lcom/baidu/launcher/db/LauncherDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 782
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
