.class public Lcom/baidu/yi/sdk/account/YiAccountUtils;
.super Ljava/lang/Object;
.source "YiAccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;,
        Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;
    }
.end annotation


# static fields
.field public static final BAIDUACCOUNT_ACTION:Ljava/lang/String; = "com.baidu.account"

.field public static final BAIDUACCOUNT_KEY:Ljava/lang/String; = "com.baidu.account.key"

.field public static final BAIDUACCOUNT_TYPE:Ljava/lang/String; = "com.baidu"

.field public static final KEY_DISPLAY_NAME:Ljava/lang/String; = "displayname"

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_PHONE:Ljava/lang/String; = "phone"

.field public static final KEY_PTOKEN:Ljava/lang/String; = "ptoken"

.field public static final KEY_STOKEN:Ljava/lang/String; = "stoken"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final TAG:Ljava/lang/String; = "YiAccountUtils"

.field private static mAccountMgr:Landroid/accounts/AccountManager;

.field private static mInstance:Lcom/baidu/yi/sdk/account/YiAccountUtils;

.field private static mSync:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsActivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mInstance:Lcom/baidu/yi/sdk/account/YiAccountUtils;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mSync:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mContext:Landroid/content/Context;

    .line 118
    instance-of v0, p1, Landroid/app/Activity;

    iput-boolean v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mIsActivity:Z

    .line 119
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/sdk/account/YiAccountUtils;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mIsActivity:Z

    return v0
.end method

.method static synthetic access$1(Lcom/baidu/yi/sdk/account/YiAccountUtils;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2()Landroid/accounts/AccountManager;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/baidu/yi/sdk/account/YiAccountUtils;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mIsActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBaiduAccountDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    const-string v1, "displayname"

    invoke-direct {p0, v1}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getYiUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, displayname:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 341
    .end local v0           #displayname:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/yi/sdk/account/YiAccountUtils;
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    sget-object v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mInstance:Lcom/baidu/yi/sdk/account/YiAccountUtils;

    if-nez v0, :cond_1

    .line 49
    sget-object v1, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mInstance:Lcom/baidu/yi/sdk/account/YiAccountUtils;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;

    invoke-direct {v0, p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mInstance:Lcom/baidu/yi/sdk/account/YiAccountUtils;

    .line 52
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    sput-object v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mInstance:Lcom/baidu/yi/sdk/account/YiAccountUtils;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getNumOfAccounts(Ljava/lang/String;)I
    .locals 1
    .parameter "accountType"

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    const-string p1, "com.baidu"

    .line 258
    :cond_1
    sget-object v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method private getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    sget-object v1, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    const-string v2, "com.baidu"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 346
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 347
    aget-object v1, v0, v3

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 349
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getYiUserData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "key"

    .prologue
    .line 319
    const/4 v8, 0x0

    .line 321
    .local v8, result:Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 322
    aput-object p1, v2, v0

    .line 325
    .local v2, columns:[Ljava/lang/String;
    const-string v0, "content://com.baidu.account.provider.AccountInfoProvider/accountInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 326
    .local v1, myUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 327
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 333
    .end local v1           #myUri:Landroid/net/Uri;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v6           #cur:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v8

    .line 330
    :catch_0
    move-exception v7

    .line 331
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method private manageAccount()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 312
    return-void
.end method


# virtual methods
.method public blockingGetBaiduAuthToken(Z)Ljava/lang/String;
    .locals 5
    .parameter "notifyAuthFailure"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    sget-object v2, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    const-string v3, "com.baidu"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 284
    .local v0, accounts:[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 286
    :try_start_0
    sget-object v2, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string v4, "BDUSS"

    invoke-virtual {v2, v3, v4, p1}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 296
    .end local v0           #accounts:[Landroid/accounts/Account;
    :goto_0
    return-object v2

    .line 287
    .restart local v0       #accounts:[Landroid/accounts/Account;
    :catch_0
    move-exception v1

    .line 288
    .local v1, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 296
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 289
    .restart local v0       #accounts:[Landroid/accounts/Account;
    :catch_1
    move-exception v1

    .line 290
    .local v1, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_1

    .line 291
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v1

    .line 292
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getTokenAsync(Ljava/lang/String;Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;Landroid/app/Activity;)V
    .locals 19
    .parameter "accountType"
    .parameter "tcallback"
    .parameter "activity"

    .prologue
    .line 200
    const/16 v18, 0x0

    .line 201
    .local v18, token:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 202
    :cond_0
    const-string p1, "com.baidu"

    .line 204
    :cond_1
    sget-object v3, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    if-eqz v3, :cond_7

    .line 205
    sget-object v3, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v17

    .line 206
    .local v17, accounts:[Landroid/accounts/Account;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v13, option:Landroid/os/Bundle;
    const-string v3, "PASSWDCK"

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    new-instance v8, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;

    .line 209
    move-object/from16 v0, v17

    array-length v3, v0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 208
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;-><init>(Lcom/baidu/yi/sdk/account/YiAccountUtils;Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;Ljava/lang/String;Z)V

    .line 210
    .local v8, callback:Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;
    move-object/from16 v0, v17

    array-length v3, v0

    if-eqz v3, :cond_5

    .line 211
    sget-object v3, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    const/4 v4, 0x0

    aget-object v4, v17, v4

    const-string v5, "BDUSS"

    const/4 v6, 0x0

    if-eqz p3, :cond_4

    move-object/from16 v7, p3

    .line 212
    :goto_1
    const/4 v9, 0x0

    .line 211
    invoke-virtual/range {v3 .. v9}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 222
    .end local v8           #callback:Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;
    .end local v13           #option:Landroid/os/Bundle;
    .end local v17           #accounts:[Landroid/accounts/Account;
    :cond_2
    :goto_2
    return-void

    .line 209
    .restart local v13       #option:Landroid/os/Bundle;
    .restart local v17       #accounts:[Landroid/accounts/Account;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 211
    .restart local v8       #callback:Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getActivity()Landroid/app/Activity;

    move-result-object v7

    goto :goto_1

    .line 214
    :cond_5
    sget-object v9, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    const-string v11, "BDUSS"

    const/4 v12, 0x0

    if-eqz p3, :cond_6

    move-object/from16 v14, p3

    .line 215
    :goto_3
    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object v15, v8

    .line 214
    invoke-virtual/range {v9 .. v16}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_2

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getActivity()Landroid/app/Activity;

    move-result-object v14

    goto :goto_3

    .line 218
    .end local v8           #callback:Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;
    .end local v13           #option:Landroid/os/Bundle;
    .end local v17           #accounts:[Landroid/accounts/Account;
    :cond_7
    if-eqz p2, :cond_2

    .line 219
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;->onResult(Ljava/lang/String;)V

    goto :goto_2
.end method

.method getTokenSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .parameter "accountType"

    .prologue
    .line 147
    const/16 v17, 0x0

    .line 148
    .local v17, token:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 149
    :cond_0
    const-string p1, "com.baidu"

    .line 151
    :cond_1
    sget-object v2, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    if-eqz v2, :cond_2

    .line 152
    sget-object v2, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v16

    .line 153
    .local v16, accounts:[Landroid/accounts/Account;
    new-instance v7, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;

    .line 154
    const/4 v3, 0x0

    move-object/from16 v0, v16

    array-length v2, v0

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 153
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v7, v0, v3, v1, v2}, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;-><init>(Lcom/baidu/yi/sdk/account/YiAccountUtils;Lcom/baidu/yi/sdk/account/YiAccountUtils$ITokenCallback;Ljava/lang/String;Z)V

    .line 155
    .local v7, callback:Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;
    move-object/from16 v0, v16

    array-length v2, v0

    if-eqz v2, :cond_4

    .line 156
    sget-object v2, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    const/4 v3, 0x0

    aget-object v3, v16, v3

    const-string v4, "BDUSS"

    const/4 v5, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 157
    const/4 v8, 0x0

    .line 156
    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 162
    :goto_1
    monitor-enter v7

    .line 164
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Object;->wait()V

    .line 165
    iget-object v0, v7, Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;->mytoken:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v7           #callback:Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;
    .end local v16           #accounts:[Landroid/accounts/Account;
    :cond_2
    return-object v17

    .line 154
    .restart local v16       #accounts:[Landroid/accounts/Account;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 159
    .restart local v7       #callback:Lcom/baidu/yi/sdk/account/YiAccountUtils$MyAccountManagerCallback;
    :cond_4
    sget-object v8, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    const-string v10, "BDUSS"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 160
    const/4 v15, 0x0

    move-object/from16 v9, p1

    move-object v14, v7

    .line 159
    invoke-virtual/range {v8 .. v15}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_1

    .line 162
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 166
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 262
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 263
    :cond_0
    const/4 v0, 0x0

    .line 270
    :goto_0
    return-object v0

    .line 265
    :cond_1
    const-string v0, "username"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_2
    const-string v0, "displayname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    invoke-direct {p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getBaiduAccountDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getYiUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasBaiduAccount()Z
    .locals 8

    .prologue
    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, result:Z
    iget-object v4, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 129
    .local v0, am:Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 130
    .local v2, desGroup:[Landroid/accounts/AuthenticatorDescription;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 136
    :goto_1
    return v3

    .line 130
    :cond_0
    aget-object v1, v2, v4

    .line 131
    .local v1, des:Landroid/accounts/AuthenticatorDescription;
    iget-object v6, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v7, "com.baidu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 132
    const/4 v3, 0x1

    .line 133
    goto :goto_1

    .line 130
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public invalidateToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "accountType"
    .parameter "token"

    .prologue
    .line 182
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    const-string p1, "com.baidu"

    .line 185
    :cond_1
    sget-object v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_2

    .line 186
    sget-object v0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_2
    return-void
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->hasBaiduAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "com.baidu"

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->getNumOfAccounts(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 4
    .parameter "accountType"

    .prologue
    .line 232
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 233
    :cond_0
    const-string p1, "com.baidu"

    .line 235
    :cond_1
    sget-object v2, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    if-eqz v2, :cond_2

    .line 236
    sget-object v2, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mAccountMgr:Landroid/accounts/AccountManager;

    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 237
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 238
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    const-string v2, "account"

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 241
    iget-object v2, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 246
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 243
    .restart local v0       #accounts:[Landroid/accounts/Account;
    :cond_3
    invoke-direct {p0}, Lcom/baidu/yi/sdk/account/YiAccountUtils;->manageAccount()V

    goto :goto_0
.end method

.method public startFillNameActivity(Z)V
    .locals 2
    .parameter "showDialog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.account.FILL_NAME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 277
    const-string v1, "show_dialog"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcom/baidu/yi/sdk/account/YiAccountUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 279
    return-void
.end method
