.class Lcom/android/systemui/recent/RecentsPanelView$1;
.super Landroid/os/AsyncTask;
.source "RecentsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->clearTaskInBackground(Lcom/android/systemui/recent/TaskDescription;Z)V
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
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;

.field final synthetic val$ad:Lcom/android/systemui/recent/TaskDescription;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/TaskDescription;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    iput-boolean p3, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$force:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 781
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 784
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v3

    .line 785
    .local v3, origPri:I
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 789
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/recent/RecentsPanelView;->access$1400(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 791
    .local v0, am:Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 794
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v8}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    iget-object v9, v9, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/systemui/recent/RecentTasksLoader;->getCleanableAppInfo(Ljava/lang/String;)Lcom/baidu/security/sysop/CleanableAppInfo;

    move-result-object v1

    .line 795
    .local v1, cleanableApp:Lcom/baidu/security/sysop/CleanableAppInfo;
    if-eqz v1, :cond_3

    iget-boolean v8, v1, Lcom/baidu/security/sysop/CleanableAppInfo;->mIsLocked:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$force:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_3

    .line 797
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 798
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v8}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v8, v9}, Lcom/android/systemui/recent/RecentTasksLoader;->remove(Lcom/android/systemui/recent/TaskDescription;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 800
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    iget v8, v8, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    iget-object v9, v9, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    const-string v10, "com.android.contacts"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :goto_1
    invoke-virtual {v0, v8, v6}, Landroid/app/ActivityManager;->removeTask(II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 803
    const/4 v4, 0x1

    .line 805
    .local v4, result:Z
    :try_start_3
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$1500(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/security/sysop/YiProcessManager;->getInstance(Landroid/content/Context;)Lcom/baidu/security/sysop/YiProcessManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/baidu/security/sysop/YiProcessManager;->cleanApp(Lcom/baidu/security/sysop/CleanableAppInfo;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v4

    .line 809
    :goto_2
    if-eqz v4, :cond_1

    .line 810
    :try_start_4
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v6}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    iget-object v7, v7, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/systemui/recent/RecentTasksLoader;->removeCleanableAppInfo(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 825
    .end local v1           #cleanableApp:Lcom/baidu/security/sysop/CleanableAppInfo;
    .end local v4           #result:Z
    :cond_1
    :goto_3
    const/4 v5, 0x0

    .line 826
    .local v5, values:[Ljava/lang/Void;
    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsPanelView$1;->publishProgress([Ljava/lang/Object;)V

    .line 827
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 828
    const/4 v6, 0x0

    return-object v6

    .end local v5           #values:[Ljava/lang/Void;
    .restart local v1       #cleanableApp:Lcom/baidu/security/sysop/CleanableAppInfo;
    :cond_2
    move v6, v7

    .line 800
    goto :goto_1

    .line 806
    .restart local v4       #result:Z
    :catch_0
    move-exception v2

    .line 807
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_2

    .line 811
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #result:Z
    :cond_3
    if-nez v1, :cond_1

    :try_start_5
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v8}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    sget-object v8, Lcom/android/systemui/recent/RecentTasksLoader;->mLockedTaskMap:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    iget-object v9, v9, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$force:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-eqz v8, :cond_1

    .line 815
    :cond_4
    :try_start_6
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/recent/RecentsPanelView;->access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 816
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v8}, Lcom/android/systemui/recent/RecentsPanelView;->access$700(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v8, v9}, Lcom/android/systemui/recent/RecentTasksLoader;->remove(Lcom/android/systemui/recent/TaskDescription;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 818
    :goto_4
    :try_start_7
    iget-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    iget v8, v8, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    iget-object v9, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    iget-object v9, v9, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    const-string v10, "com.android.contacts"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_5
    invoke-virtual {v0, v8, v6}, Landroid/app/ActivityManager;->removeTask(II)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 822
    .end local v1           #cleanableApp:Lcom/baidu/security/sysop/CleanableAppInfo;
    :catch_1
    move-exception v6

    goto :goto_3

    .restart local v1       #cleanableApp:Lcom/baidu/security/sysop/CleanableAppInfo;
    :cond_5
    move v6, v7

    .line 818
    goto :goto_5

    .line 817
    :catch_2
    move-exception v8

    goto :goto_4

    .line 799
    :catch_3
    move-exception v8

    goto/16 :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 781
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$1;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$1600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0080

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->val$ad:Lcom/android/systemui/recent/TaskDescription;

    invoke-virtual {v5}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    .line 841
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$1;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_0
    return-void

    .line 842
    :catch_0
    move-exception v0

    goto :goto_0
.end method
