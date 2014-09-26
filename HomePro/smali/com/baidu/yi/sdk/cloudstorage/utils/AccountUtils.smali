.class public Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# static fields
.field public static final ACCOUNT_CENTER_ACTION:Ljava/lang/String; = "com.baidu.account.ACCOUNTCENTER"

.field public static final AUTH_TOKEN_TYPE:Ljava/lang/String; = "BDUSS"

.field public static final CHUNLEI_ACCOUNT_TYPE:Ljava/lang/String; = "com.baidu"

.field private static mInstance:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountMgr:Landroid/accounts/AccountManager;

.field public mBDUSS:Ljava/lang/String;

.field private mIsAddingAccount:Z

.field private mResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mInstance:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mResult:Z

    .line 31
    iput-boolean v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mIsAddingAccount:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 39
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mResult:Z

    return-void
.end method

.method static synthetic access$1(Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mIsAddingAccount:Z

    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 43
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mInstance:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;

    invoke-direct {v0, p0}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mInstance:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;

    .line 47
    :cond_0
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mInstance:Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;

    return-object v0
.end method


# virtual methods
.method public addAccount(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V
    .locals 8
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    const-string v1, "com.baidu"

    const-string v2, "BDUSS"

    move-object v4, v3

    move-object v5, p1

    move-object v6, p2

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 135
    return-void
.end method

.method public declared-synchronized addAccount(Landroid/app/Activity;)Z
    .locals 8
    .parameter "activity"

    .prologue
    .line 111
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mResult:Z

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mIsAddingAccount:Z

    .line 114
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    const-string v1, "com.baidu"

    const-string v2, "BDUSS"

    const/4 v3, 0x0

    .line 115
    const/4 v4, 0x0

    new-instance v6, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils$1;

    invoke-direct {v6, p0}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils$1;-><init>(Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;)V

    .line 127
    const/4 v7, 0x0

    move-object v5, p1

    .line 114
    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 128
    iget-boolean v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 99
    const-string v2, "com.baidu"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 101
    .local v0, accountList:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    aget-object v2, v0, v4

    .line 103
    const-string v3, "BDUSS"

    .line 102
    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mBDUSS:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mBDUSS:Ljava/lang/String;

    .line 106
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getCurrentAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 89
    const-string v2, "com.baidu"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 90
    .local v0, accountList:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 91
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 93
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUid()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->isLoginIn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccount:Landroid/accounts/Account;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->isLoginIn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    const/4 v0, 0x0

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    const/4 v0, 0x0

    .line 69
    .local v0, uname:Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccount:Landroid/accounts/Account;

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public invalidateAuthToken()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    const-string v1, "com.baidu"

    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mBDUSS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public isAddingAccount()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mIsAddingAccount:Z

    return v0
.end method

.method public isLoginIn()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, isLogin:Z
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 54
    const-string v3, "com.baidu"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 55
    .local v0, accountList:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 56
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    .line 57
    const/4 v1, 0x1

    .line 58
    aget-object v2, v0, v4

    iput-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccount:Landroid/accounts/Account;

    .line 61
    :cond_0
    return v1
.end method

.method public removeAccount(Landroid/accounts/AccountManagerCallback;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/AccountUtils;->mAccount:Landroid/accounts/Account;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 139
    return-void
.end method
