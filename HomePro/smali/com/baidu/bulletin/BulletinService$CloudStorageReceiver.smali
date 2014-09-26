.class Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BulletinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/BulletinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudStorageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/BulletinService;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/BulletinService;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;->this$0:Lcom/baidu/bulletin/BulletinService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/bulletin/BulletinService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;-><init>(Lcom/baidu/bulletin/BulletinService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "i"

    .prologue
    .line 284
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, action:Ljava/lang/String;
    const-string v6, "BulletinService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive intent action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v6, "com.baidu.cloudstorage.results"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 287
    if-eqz p2, :cond_0

    .line 288
    const-string v6, "notification"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 289
    .local v5, type:I
    packed-switch v5, :pswitch_data_0

    .line 297
    const-string v6, "BulletinService"

    const-string v7, "Not recognized intent type to handle"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v5           #type:I
    :cond_0
    :goto_0
    return-void

    .line 291
    .restart local v5       #type:I
    :pswitch_0
    iget-object v6, p0, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;->this$0:Lcom/baidu/bulletin/BulletinService;

    #calls: Lcom/baidu/bulletin/BulletinService;->handleOfflineFileResult(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/baidu/bulletin/BulletinService;->access$100(Lcom/baidu/bulletin/BulletinService;Landroid/content/Intent;)V

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v6, p0, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;->this$0:Lcom/baidu/bulletin/BulletinService;

    #calls: Lcom/baidu/bulletin/BulletinService;->handleOfflineProgress(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/baidu/bulletin/BulletinService;->access$200(Lcom/baidu/bulletin/BulletinService;Landroid/content/Intent;)V

    goto :goto_0

    .line 301
    .end local v5           #type:I
    :cond_1
    const-string v6, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 302
    iget-object v6, p0, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;->this$0:Lcom/baidu/bulletin/BulletinService;

    invoke-virtual {v6}, Lcom/baidu/bulletin/BulletinService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/account/YiAccountUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 303
    iget-object v6, p0, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;->this$0:Lcom/baidu/bulletin/BulletinService;

    #calls: Lcom/baidu/bulletin/BulletinService;->putOAuthInfo()V
    invoke-static {v6}, Lcom/baidu/bulletin/BulletinService;->access$300(Lcom/baidu/bulletin/BulletinService;)V

    goto :goto_0

    .line 305
    :cond_2
    const-string v6, "BulletinService"

    const-string v7, "account is not login when LOGIN_ACCOUNTS_CHANGED_ACTION received"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_3
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 309
    iget-object v6, p0, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;->this$0:Lcom/baidu/bulletin/BulletinService;

    #calls: Lcom/baidu/bulletin/BulletinService;->isNetworkAvailable()Z
    invoke-static {v6}, Lcom/baidu/bulletin/BulletinService;->access$400(Lcom/baidu/bulletin/BulletinService;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 310
    iget-object v6, p0, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;->this$0:Lcom/baidu/bulletin/BulletinService;

    #getter for: Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;
    invoke-static {v6}, Lcom/baidu/bulletin/BulletinService;->access$500(Lcom/baidu/bulletin/BulletinService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 311
    .local v2, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 312
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 313
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 314
    .local v3, taskUid:Ljava/lang/String;
    const-string v6, "BulletinService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resume taskuid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v6, p0, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;->this$0:Lcom/baidu/bulletin/BulletinService;

    invoke-virtual {v6, v3}, Lcom/baidu/bulletin/BulletinService;->resumeTask(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v2           #iter:Ljava/util/Iterator;
    .end local v3           #taskUid:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/baidu/bulletin/BulletinService$CloudStorageReceiver;->this$0:Lcom/baidu/bulletin/BulletinService;

    #getter for: Lcom/baidu/bulletin/BulletinService;->mTasks:Ljava/util/Map;
    invoke-static {v6}, Lcom/baidu/bulletin/BulletinService;->access$500(Lcom/baidu/bulletin/BulletinService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 319
    .restart local v2       #iter:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 320
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 321
    .restart local v1       #entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 322
    .restart local v3       #taskUid:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/bulletin/BulletinService$Task;

    .line 323
    .local v4, taskVal:Lcom/baidu/bulletin/BulletinService$Task;
    const-string v6, "BulletinService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "network fail taskuid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v6, v4, Lcom/baidu/bulletin/BulletinService$Task;->mListener:Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;

    iget v7, v4, Lcom/baidu/bulletin/BulletinService$Task;->mTaskType:I

    iget-object v8, v4, Lcom/baidu/bulletin/BulletinService$Task;->mChannelItem:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/16 v9, 0x9

    invoke-interface {v6, v7, v8, v9}, Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;->remoteTaskFailed(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;I)V

    goto :goto_2

    .line 289
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
