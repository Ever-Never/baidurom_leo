.class Lcom/android/systemui/recent/RecentTasksLoader$6;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->saveLockedTaskMapInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$6;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 706
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    .line 709
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    .line 710
    .local v4, origPri:I
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 711
    const/4 v2, 0x0

    .line 712
    .local v2, fs:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 714
    .local v5, os:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/recent/RecentTasksLoader$6;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "LOCKED_TASK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, fileName:Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 717
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .local v3, fs:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 718
    .end local v5           #os:Ljava/io/ObjectOutputStream;
    .local v6, os:Ljava/io/ObjectOutputStream;
    :try_start_2
    sget-object v7, Lcom/android/systemui/recent/RecentTasksLoader;->mLockedTaskMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 722
    if-eqz v3, :cond_0

    .line 724
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 728
    :cond_0
    :goto_0
    if-eqz v6, :cond_5

    .line 730
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v6

    .end local v6           #os:Ljava/io/ObjectOutputStream;
    .restart local v5       #os:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .line 735
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 736
    const/4 v7, 0x0

    return-object v7

    .line 731
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .end local v5           #os:Ljava/io/ObjectOutputStream;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/ObjectOutputStream;
    .restart local v5       #os:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .line 732
    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 719
    .end local v1           #fileName:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 720
    .local v0, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v7, "RecentTasksLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t save file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 722
    if-eqz v2, :cond_2

    .line 724
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 728
    :cond_2
    :goto_3
    if-eqz v5, :cond_1

    .line 730
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 731
    :catch_2
    move-exception v7

    goto :goto_1

    .line 722
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_3

    .line 724
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 728
    :cond_3
    :goto_5
    if-eqz v5, :cond_4

    .line 730
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 732
    :cond_4
    :goto_6
    throw v7

    .line 725
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .end local v5           #os:Ljava/io/ObjectOutputStream;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v7

    goto :goto_0

    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #fs:Ljava/io/FileOutputStream;
    .end local v6           #os:Ljava/io/ObjectOutputStream;
    .restart local v0       #ex:Ljava/lang/Exception;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v7

    goto :goto_3

    .end local v0           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v8

    goto :goto_5

    .line 731
    :catch_6
    move-exception v8

    goto :goto_6

    .line 722
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2           #fs:Ljava/io/FileOutputStream;
    .end local v5           #os:Ljava/io/ObjectOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/ObjectOutputStream;
    .restart local v5       #os:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 719
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2           #fs:Ljava/io/FileOutputStream;
    .end local v5           #os:Ljava/io/ObjectOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v0

    move-object v5, v6

    .end local v6           #os:Ljava/io/ObjectOutputStream;
    .restart local v5       #os:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2           #fs:Ljava/io/FileOutputStream;
    .end local v5           #os:Ljava/io/ObjectOutputStream;
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/ObjectOutputStream;
    :cond_5
    move-object v5, v6

    .end local v6           #os:Ljava/io/ObjectOutputStream;
    .restart local v5       #os:Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileOutputStream;
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
