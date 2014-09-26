.class Lcom/android/systemui/recent/RecentTasksLoader$5;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadLockedTaskMapInBackground()V
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
    .line 663
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$5;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 663
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    .line 666
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v5

    .line 667
    .local v5, origPri:I
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 668
    const/4 v2, 0x0

    .line 669
    .local v2, fs:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 671
    .local v6, os:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/recent/RecentTasksLoader$5;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "LOCKED_TASK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, fileName:Ljava/lang/String;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 674
    .end local v2           #fs:Ljava/io/FileInputStream;
    .local v3, fs:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 675
    .end local v6           #os:Ljava/io/ObjectInputStream;
    .local v7, os:Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 676
    .local v4, obj:Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 677
    check-cast v4, Ljava/util/HashMap;

    .end local v4           #obj:Ljava/lang/Object;
    sput-object v4, Lcom/android/systemui/recent/RecentTasksLoader;->mLockedTaskMap:Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 685
    :goto_0
    if-eqz v3, :cond_0

    .line 687
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 691
    :cond_0
    :goto_1
    if-eqz v7, :cond_6

    .line 693
    :try_start_4
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v6, v7

    .end local v7           #os:Ljava/io/ObjectInputStream;
    .restart local v6       #os:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .line 698
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    :cond_1
    :goto_2
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 699
    const/4 v8, 0x0

    return-object v8

    .line 679
    .end local v2           #fs:Ljava/io/FileInputStream;
    .end local v6           #os:Ljava/io/ObjectInputStream;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    .restart local v4       #obj:Ljava/lang/Object;
    .restart local v7       #os:Ljava/io/ObjectInputStream;
    :cond_2
    :try_start_5
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/android/systemui/recent/RecentTasksLoader;->mLockedTaskMap:Ljava/util/HashMap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 681
    .end local v4           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v6, v7

    .end local v7           #os:Ljava/io/ObjectInputStream;
    .restart local v6       #os:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .line 682
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #fs:Ljava/io/FileInputStream;
    .local v0, ex:Ljava/lang/Exception;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    const-string v8, "RecentTasksLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t open file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/android/systemui/recent/RecentTasksLoader;->mLockedTaskMap:Ljava/util/HashMap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 685
    if-eqz v2, :cond_3

    .line 687
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 691
    :cond_3
    :goto_4
    if-eqz v6, :cond_1

    .line 693
    :try_start_8
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 694
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #fs:Ljava/io/FileInputStream;
    .end local v6           #os:Ljava/io/ObjectInputStream;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    .restart local v7       #os:Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v8

    move-object v6, v7

    .end local v7           #os:Ljava/io/ObjectInputStream;
    .restart local v6       #os:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .line 695
    .end local v3           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    goto :goto_2

    .line 685
    .end local v1           #fileName:Ljava/lang/String;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v2, :cond_4

    .line 687
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 691
    :cond_4
    :goto_6
    if-eqz v6, :cond_5

    .line 693
    :try_start_a
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 695
    :cond_5
    :goto_7
    throw v8

    .line 688
    .end local v2           #fs:Ljava/io/FileInputStream;
    .end local v6           #os:Ljava/io/ObjectInputStream;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    .restart local v7       #os:Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v8

    goto :goto_1

    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #fs:Ljava/io/FileInputStream;
    .end local v7           #os:Ljava/io/ObjectInputStream;
    .restart local v0       #ex:Ljava/lang/Exception;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    .restart local v6       #os:Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v8

    goto :goto_4

    .end local v0           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v9

    goto :goto_6

    .line 694
    :catch_6
    move-exception v9

    goto :goto_7

    .line 685
    .end local v2           #fs:Ljava/io/FileInputStream;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2           #fs:Ljava/io/FileInputStream;
    .end local v6           #os:Ljava/io/ObjectInputStream;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    .restart local v7       #os:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7           #os:Ljava/io/ObjectInputStream;
    .restart local v6       #os:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    goto :goto_5

    .line 681
    .end local v1           #fileName:Ljava/lang/String;
    :catch_7
    move-exception v0

    goto :goto_3

    .end local v2           #fs:Ljava/io/FileInputStream;
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v2           #fs:Ljava/io/FileInputStream;
    .end local v6           #os:Ljava/io/ObjectInputStream;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    .restart local v7       #os:Ljava/io/ObjectInputStream;
    :cond_6
    move-object v6, v7

    .end local v7           #os:Ljava/io/ObjectInputStream;
    .restart local v6       #os:Ljava/io/ObjectInputStream;
    move-object v2, v3

    .end local v3           #fs:Ljava/io/FileInputStream;
    .restart local v2       #fs:Ljava/io/FileInputStream;
    goto :goto_2
.end method
