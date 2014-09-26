.class Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;
.super Ljava/lang/Object;
.source "YiAccountUtils.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/account/YiAccountUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccountManagerCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mCallback:Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;

.field private mIfAddAccount:Z

.field public mytoken:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/yi/sdk/account/YiAccountUtils;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/account/YiAccountUtils;Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "callback"
    .parameter "accountType"
    .parameter "ifAddAccount"

    .prologue
    const/4 v0, 0x0

    .line 80
    iput-object p1, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->this$0:Lcom/baidu/yi/sdk/account/YiAccountUtils;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mytoken:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mCallback:Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;

    .line 81
    iput-object p2, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mCallback:Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;

    .line 82
    iput-object p3, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mAccountType:Ljava/lang/String;

    .line 83
    iput-boolean p4, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mIfAddAccount:Z

    .line 84
    return-void
.end method

.method private endAll()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mCallback:Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mCallback:Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;

    iget-object v2, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mytoken:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;->onResult(Ljava/lang/String;)V

    .line 68
    const-string v1, "YiAccountUtils"

    const-string v2, "the app callback is invokded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->this$0:Lcom/baidu/yi/sdk/account/YiAccountUtils;

    #getter for: Lcom/baidu/yi/sdk/account/YiAccountUtils;->mIsActivity:Z
    invoke-static {v1}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->access$0(Lcom/baidu/yi/sdk/account/YiAccountUtils;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.account"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->this$0:Lcom/baidu/yi/sdk/account/YiAccountUtils;

    #getter for: Lcom/baidu/yi/sdk/account/YiAccountUtils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->access$1(Lcom/baidu/yi/sdk/account/YiAccountUtils;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 73
    const-string v1, "com.baidu.account.key"

    iget-object v2, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mytoken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->this$0:Lcom/baidu/yi/sdk/account/YiAccountUtils;

    #getter for: Lcom/baidu/yi/sdk/account/YiAccountUtils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->access$1(Lcom/baidu/yi/sdk/account/YiAccountUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 77
    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, result:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    monitor-enter p0

    .line 89
    :try_start_0
    const-string v0, "YiAccountUtils"

    const-string v1, "account callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 92
    const-string v1, "authtoken"

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mytoken:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->access$2()Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 94
    .local v7, accounts:[Landroid/accounts/Account;
    iget-boolean v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mIfAddAccount:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mytoken:Ljava/lang/String;

    if-nez v0, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    .line 95
    const-string v0, "YiAccountUtils"

    const-string v1, "continue to get token after addAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->access$2()Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const-string v2, "BDUSS"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->this$0:Lcom/baidu/yi/sdk/account/YiAccountUtils;

    #calls: Lcom/baidu/yi/sdk/account/YiAccountUtils;->getActivity()Landroid/app/Activity;
    invoke-static {v4}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->access$3(Lcom/baidu/yi/sdk/account/YiAccountUtils;)Landroid/app/Activity;

    move-result-object v4

    .line 97
    const/4 v6, 0x0

    move-object v5, p0

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .end local v7           #accounts:[Landroid/accounts/Account;
    :goto_0
    return-void

    .line 100
    .restart local v7       #accounts:[Landroid/accounts/Account;
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->endAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    .end local v7           #accounts:[Landroid/accounts/Account;
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 101
    :catch_0
    move-exception v8

    .line 102
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    invoke-direct {p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->endAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
