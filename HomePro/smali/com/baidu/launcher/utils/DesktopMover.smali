.class public Lcom/baidu/launcher/utils/DesktopMover;
.super Ljava/lang/Object;
.source "DesktopMover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/utils/DesktopMover$Provider;
    }
.end annotation


# static fields
.field public static final DIALOG_CHECK_PROGRESS:I = 0x64

.field public static final DIALOG_MOVE_CONFIRM:I = 0x67

.field public static final DIALOG_MOVE_PROGRESS:I = 0x65

.field public static final DIALOG_SELECT_DESKTOP:I = 0x66

.field public static final MAX_FOLDER_ITEM_COUNT:I = 0xc

.field public static final MESSAGE_CHECK_FINISH:I = 0x1

.field public static final MESSAGE_MOVE_FAILURE:I = 0x4

.field public static final MESSAGE_MOVE_SUCCESS_COMPLETE:I = 0x2

.field public static final MESSAGE_MOVE_SUCCESS_PARTIAL:I = 0x3

.field public static final MOVE_FAILURE:I = 0x3

.field public static final MOVE_SUCCESS_COMPLETE:I = 0x1

.field public static final MOVE_SUCCESS_PARTIAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DesktopMover"

.field private static singleInstance:Lcom/baidu/launcher/utils/DesktopMover;


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/launcher/app/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProvdersMatched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/utils/DesktopMover$Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/baidu/launcher/utils/DesktopMover$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/utils/DesktopMover$1;-><init>(Lcom/baidu/launcher/utils/DesktopMover;)V

    iput-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/baidu/launcher/utils/DesktopMover;->getDesktopsMoveable()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/utils/DesktopMover;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/baidu/launcher/utils/DesktopMover;->moveDesktop(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/utils/DesktopMover;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private findLastNoneEmptyScreen()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 430
    iget-object v4, p0, Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    move v0, v3

    .line 441
    :cond_0
    :goto_0
    return v0

    .line 431
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/app/Launcher;

    .line 432
    .local v1, launcher:Lcom/baidu/launcher/app/Launcher;
    if-nez v1, :cond_2

    move v0, v3

    goto :goto_0

    .line 433
    :cond_2
    invoke-virtual {v1}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScreenCount()I

    move-result v2

    .line 434
    .local v2, screenCount:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 435
    invoke-virtual {v1}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->isScreenEmpty(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v3

    .line 441
    goto :goto_0
.end method

.method private getDesktopsMoveable()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/utils/DesktopMover$Provider;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 138
    iget-object v10, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;

    if-nez v10, :cond_0

    .line 139
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;

    .line 142
    :cond_0
    iget-object v10, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 143
    iget-object v10, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 145
    :cond_1
    iget-object v10, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 146
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 149
    .local v7, provider:Lcom/baidu/launcher/utils/DesktopMover$Provider;
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v11, v11}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, allProviders:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ProviderInfo;

    .line 151
    .local v8, providerInfo:Landroid/content/pm/ProviderInfo;
    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v11, "launcher"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v11, ".settings"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v11, "baidu"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v11, "miui"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 155
    iget-object v10, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    iget-object v11, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    .line 156
    .local v9, result:I
    packed-switch v9, :pswitch_data_0

    .line 186
    :goto_1
    const-string v10, "DesktopMover"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "authority:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v10, "DesktopMover"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "packageName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v10, "DesktopMover"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readPermission:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :pswitch_0
    const-string v5, ""

    .line 159
    .local v5, label:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 161
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x80

    invoke-virtual {v6, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 162
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 163
    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 168
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :goto_2
    new-instance v7, Lcom/baidu/launcher/utils/DesktopMover$Provider;

    .end local v7           #provider:Lcom/baidu/launcher/utils/DesktopMover$Provider;
    invoke-direct {v7}, Lcom/baidu/launcher/utils/DesktopMover$Provider;-><init>()V

    .line 169
    .restart local v7       #provider:Lcom/baidu/launcher/utils/DesktopMover$Provider;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/baidu/launcher/utils/DesktopMover$Provider;->appLabel:Ljava/lang/String;

    .line 170
    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v10, v7, Lcom/baidu/launcher/utils/DesktopMover$Provider;->authority:Ljava/lang/String;

    .line 171
    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iput-object v10, v7, Lcom/baidu/launcher/utils/DesktopMover$Provider;->packageName:Ljava/lang/String;

    .line 172
    iget-object v10, v8, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iput-object v10, v7, Lcom/baidu/launcher/utils/DesktopMover$Provider;->readPermission:Ljava/lang/String;

    .line 173
    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/baidu/launcher/utils/DesktopMover$Provider;->grantReadPermission:Z

    .line 174
    iput-object v4, v7, Lcom/baidu/launcher/utils/DesktopMover$Provider;->icon:Landroid/graphics/drawable/Drawable;

    .line 176
    iget-object v10, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v10, "DesktopMover"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " grantReadPermission:granted"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "DesktopMover"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception happens in get ApplicationInfo - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 180
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #label:Ljava/lang/CharSequence;
    :pswitch_1
    const-string v10, "DesktopMover"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " grantReadPermission:denied"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    .end local v8           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v9           #result:I
    :cond_3
    iget-object v10, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;

    return-object v10

    .line 156
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/launcher/utils/DesktopMover;
    .locals 2

    .prologue
    .line 94
    const-class v1, Lcom/baidu/launcher/utils/DesktopMover;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/utils/DesktopMover;->singleInstance:Lcom/baidu/launcher/utils/DesktopMover;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/baidu/launcher/utils/DesktopMover;

    invoke-direct {v0}, Lcom/baidu/launcher/utils/DesktopMover;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/DesktopMover;->singleInstance:Lcom/baidu/launcher/utils/DesktopMover;

    .line 97
    :cond_0
    sget-object v0, Lcom/baidu/launcher/utils/DesktopMover;->singleInstance:Lcom/baidu/launcher/utils/DesktopMover;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getScreenCountOfSourceDesktop(Landroid/net/Uri;)I
    .locals 11
    .parameter "sourceUri"

    .prologue
    const/4 v10, 0x1

    .line 401
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 402
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v2, v10, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "screen"

    aput-object v3, v2, v1

    .line 403
    .local v2, projectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 405
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 406
    .local v8, maxOfScreenIndex:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 408
    const-string v1, "screen"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 409
    .local v9, screenIndex:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_0

    .line 412
    :cond_0
    const-string v1, "DesktopMover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreenCountOfSourceDesktop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    add-int/lit8 v1, v8, 0x1

    .line 417
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 415
    .end local v9           #screenIndex:I
    :goto_1
    return v1

    .line 414
    :catch_0
    move-exception v7

    .line 417
    .local v7, e:Ljava/lang/Exception;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v10

    .line 415
    goto :goto_1

    .line 417
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private isScreenExits(I)Z
    .locals 3
    .parameter "screen"

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-object v2, p0, Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return v1

    .line 423
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    .line 424
    .local v0, launcher:Lcom/baidu/launcher/app/Launcher;
    if-eqz v0, :cond_0

    .line 425
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScreenCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private moveDesktop(I)I
    .locals 52
    .parameter "select"

    .prologue
    .line 196
    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p1

    if-lt v0, v4, :cond_2

    .line 197
    :cond_0
    const/4 v4, 0x3

    .line 375
    :cond_1
    :goto_0
    return v4

    .line 200
    :cond_2
    const/16 v36, 0x0

    .line 201
    .local v36, ignoreExtraScreen:Z
    const/4 v14, 0x0

    .line 203
    .local v14, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/utils/DesktopMover;->mProvdersMatched:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/utils/DesktopMover$Provider;

    iget-object v13, v4, Lcom/baidu/launcher/utils/DesktopMover$Provider;->authority:Ljava/lang/String;

    .line 204
    .local v13, authority:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 206
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "favorites"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "notify"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "=true"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 208
    .local v3, sourceUri:Landroid/net/Uri;
    sget-object v24, Lcom/baidu/launcher/data/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    .line 210
    .local v24, destinationUri:Landroid/net/Uri;
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/utils/DesktopMover;->findLastNoneEmptyScreen()I

    move-result v41

    .line 212
    .local v41, lastNoneEmptyScreen:I
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/baidu/launcher/utils/DesktopMover;->getScreenCountOfSourceDesktop(Landroid/net/Uri;)I

    move-result v44

    .line 214
    .local v44, sourceScreenCount:I
    add-int/lit8 v23, v41, 0x1

    .line 216
    .local v23, destinationScreenIndex:I
    const/16 v45, 0x0

    .local v45, sourceScreenIndex:I
    :goto_1
    move/from16 v0, v45

    move/from16 v1, v44

    if-ge v0, v1, :cond_c

    .line 217
    const-string v5, "appWidgetId=? and screen=? and container=? and (itemType=? or itemType=? )"

    .line 223
    .local v5, selection:Ljava/lang/String;
    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x1

    invoke-static/range {v45 .. v45}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const/16 v7, -0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x3

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x4

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 231
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 233
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_b

    .line 234
    const/16 v4, 0xa

    move/from16 v0, v23

    if-ge v0, v4, :cond_a

    .line 236
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/baidu/launcher/utils/DesktopMover;->isScreenExits(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 237
    move/from16 v22, v23

    .line 238
    .local v22, destinationScreen:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/utils/DesktopMover;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/baidu/launcher/utils/DesktopMover$3;

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lcom/baidu/launcher/utils/DesktopMover$3;-><init>(Lcom/baidu/launcher/utils/DesktopMover;I)V

    invoke-virtual {v4, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    .end local v22           #destinationScreen:I
    :cond_3
    new-instance v51, Landroid/content/ContentValues;

    invoke-direct/range {v51 .. v51}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v51, values:Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 255
    const-string v4, "_id"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 256
    .local v35, idIndex:I
    const-string v4, "intent"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 257
    .local v37, intentIndex:I
    const-string v4, "title"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v49

    .line 258
    .local v49, titleIndex:I
    const-string v4, "iconType"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 259
    .local v32, iconTypeIndex:I
    const-string v4, "icon"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 260
    .local v29, iconIndex:I
    const-string v4, "iconPackage"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 261
    .local v30, iconPackageIndex:I
    const-string v4, "iconResource"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 262
    .local v31, iconResourceIndex:I
    const-string v4, "container"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 263
    .local v20, containerIndex:I
    const-string v4, "itemType"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 264
    .local v40, itemTypeIndex:I
    const-string v4, "screen"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 265
    .local v42, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 266
    .local v16, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 267
    .local v18, cellYIndex:I
    const-string v4, "spanX"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 268
    .local v46, spanXIndex:I
    const-string v4, "spanY"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 269
    .local v47, spanYIndex:I
    const-string v4, "uri"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 270
    .local v50, uriIndex:I
    const-string v4, "displayMode"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 272
    .local v25, displayModeIndex:I
    move/from16 v0, v35

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 273
    .local v33, id:J
    move/from16 v0, v49

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 274
    .local v48, title:Ljava/lang/String;
    move/from16 v0, v40

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 275
    .local v39, itemType:I
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 276
    .local v19, container:I
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 277
    .local v15, cellX:I
    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 278
    .local v17, cellY:I
    move/from16 v0, v42

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 280
    .local v43, sourceScreen:I
    const-string v4, "DesktopMover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v4, "DesktopMover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "itemType ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v4, "DesktopMover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "container ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v4, "DesktopMover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sourceScreen ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    add-int/lit8 v4, v4, -0x1

    if-gt v15, v4, :cond_4

    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v17

    if-le v0, v4, :cond_5

    .line 286
    :cond_4
    const-string v4, "DesktopMover"

    const-string v7, "ignore icon cellX or cellY is beyound our standard."

    invoke-static {v4, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v4, "DesktopMover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cellX ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cellY"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 372
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #sourceUri:Landroid/net/Uri;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v13           #authority:Ljava/lang/String;
    .end local v15           #cellX:I
    .end local v16           #cellXIndex:I
    .end local v17           #cellY:I
    .end local v18           #cellYIndex:I
    .end local v19           #container:I
    .end local v20           #containerIndex:I
    .end local v23           #destinationScreenIndex:I
    .end local v24           #destinationUri:Landroid/net/Uri;
    .end local v25           #displayModeIndex:I
    .end local v29           #iconIndex:I
    .end local v30           #iconPackageIndex:I
    .end local v31           #iconResourceIndex:I
    .end local v32           #iconTypeIndex:I
    .end local v33           #id:J
    .end local v35           #idIndex:I
    .end local v37           #intentIndex:I
    .end local v39           #itemType:I
    .end local v40           #itemTypeIndex:I
    .end local v41           #lastNoneEmptyScreen:I
    .end local v42           #screenIndex:I
    .end local v43           #sourceScreen:I
    .end local v44           #sourceScreenCount:I
    .end local v45           #sourceScreenIndex:I
    .end local v46           #spanXIndex:I
    .end local v47           #spanYIndex:I
    .end local v48           #title:Ljava/lang/String;
    .end local v49           #titleIndex:I
    .end local v50           #uriIndex:I
    .end local v51           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v26

    .line 373
    .local v26, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    const-string v4, "DesktopMover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception happens in moveDesktop: - -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-static {v4, v7, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    const/4 v4, 0x3

    .line 378
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 379
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 381
    .end local v26           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 291
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #sourceUri:Landroid/net/Uri;
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v13       #authority:Ljava/lang/String;
    .restart local v15       #cellX:I
    .restart local v16       #cellXIndex:I
    .restart local v17       #cellY:I
    .restart local v18       #cellYIndex:I
    .restart local v19       #container:I
    .restart local v20       #containerIndex:I
    .restart local v23       #destinationScreenIndex:I
    .restart local v24       #destinationUri:Landroid/net/Uri;
    .restart local v25       #displayModeIndex:I
    .restart local v29       #iconIndex:I
    .restart local v30       #iconPackageIndex:I
    .restart local v31       #iconResourceIndex:I
    .restart local v32       #iconTypeIndex:I
    .restart local v33       #id:J
    .restart local v35       #idIndex:I
    .restart local v37       #intentIndex:I
    .restart local v39       #itemType:I
    .restart local v40       #itemTypeIndex:I
    .restart local v41       #lastNoneEmptyScreen:I
    .restart local v42       #screenIndex:I
    .restart local v43       #sourceScreen:I
    .restart local v44       #sourceScreenCount:I
    .restart local v45       #sourceScreenIndex:I
    .restart local v46       #spanXIndex:I
    .restart local v47       #spanYIndex:I
    .restart local v48       #title:Ljava/lang/String;
    .restart local v49       #titleIndex:I
    .restart local v50       #uriIndex:I
    .restart local v51       #values:Landroid/content/ContentValues;
    :cond_5
    :try_start_3
    invoke-virtual/range {v51 .. v51}, Landroid/content/ContentValues;->clear()V

    .line 292
    const-string v4, "intent"

    move/from16 v0, v37

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v4, "title"

    move/from16 v0, v49

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v4, "iconType"

    move/from16 v0, v32

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    const-string v4, "icon"

    move/from16 v0, v29

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 296
    const-string v4, "iconPackage"

    move/from16 v0, v30

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v4, "iconResource"

    move/from16 v0, v31

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v4, "itemType"

    move/from16 v0, v40

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v4, "appWidgetId"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string v4, "cellX"

    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v4, "cellY"

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v4, "spanX"

    move/from16 v0, v46

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v4, "spanY"

    move/from16 v0, v47

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v4, "uri"

    move/from16 v0, v50

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v4, "displayMode"

    move/from16 v0, v25

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    const-string v4, "container"

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v4, "screen"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    packed-switch v39, :pswitch_data_0

    .line 351
    :goto_3
    :pswitch_0
    invoke-virtual/range {v51 .. v51}, Landroid/content/ContentValues;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 377
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #sourceUri:Landroid/net/Uri;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v13           #authority:Ljava/lang/String;
    .end local v15           #cellX:I
    .end local v16           #cellXIndex:I
    .end local v17           #cellY:I
    .end local v18           #cellYIndex:I
    .end local v19           #container:I
    .end local v20           #containerIndex:I
    .end local v23           #destinationScreenIndex:I
    .end local v24           #destinationUri:Landroid/net/Uri;
    .end local v25           #displayModeIndex:I
    .end local v29           #iconIndex:I
    .end local v30           #iconPackageIndex:I
    .end local v31           #iconResourceIndex:I
    .end local v32           #iconTypeIndex:I
    .end local v33           #id:J
    .end local v35           #idIndex:I
    .end local v37           #intentIndex:I
    .end local v39           #itemType:I
    .end local v40           #itemTypeIndex:I
    .end local v41           #lastNoneEmptyScreen:I
    .end local v42           #screenIndex:I
    .end local v43           #sourceScreen:I
    .end local v44           #sourceScreenCount:I
    .end local v45           #sourceScreenIndex:I
    .end local v46           #spanXIndex:I
    .end local v47           #spanYIndex:I
    .end local v48           #title:Ljava/lang/String;
    .end local v49           #titleIndex:I
    .end local v50           #uriIndex:I
    .end local v51           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    .line 378
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6

    .line 379
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 377
    :cond_6
    :goto_4
    throw v4

    .line 311
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #sourceUri:Landroid/net/Uri;
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v13       #authority:Ljava/lang/String;
    .restart local v15       #cellX:I
    .restart local v16       #cellXIndex:I
    .restart local v17       #cellY:I
    .restart local v18       #cellYIndex:I
    .restart local v19       #container:I
    .restart local v20       #containerIndex:I
    .restart local v23       #destinationScreenIndex:I
    .restart local v24       #destinationUri:Landroid/net/Uri;
    .restart local v25       #displayModeIndex:I
    .restart local v29       #iconIndex:I
    .restart local v30       #iconPackageIndex:I
    .restart local v31       #iconResourceIndex:I
    .restart local v32       #iconTypeIndex:I
    .restart local v33       #id:J
    .restart local v35       #idIndex:I
    .restart local v37       #intentIndex:I
    .restart local v39       #itemType:I
    .restart local v40       #itemTypeIndex:I
    .restart local v41       #lastNoneEmptyScreen:I
    .restart local v42       #screenIndex:I
    .restart local v43       #sourceScreen:I
    .restart local v44       #sourceScreenCount:I
    .restart local v45       #sourceScreenIndex:I
    .restart local v46       #spanXIndex:I
    .restart local v47       #spanYIndex:I
    .restart local v48       #title:Ljava/lang/String;
    .restart local v49       #titleIndex:I
    .restart local v50       #uriIndex:I
    .restart local v51       #values:Landroid/content/ContentValues;
    :pswitch_1
    :try_start_5
    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    .line 315
    :pswitch_2
    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v27

    .line 318
    .local v27, foldId:J
    const/4 v9, 0x0

    const-string v10, "container=? "

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v4

    const/4 v12, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 320
    .local v21, cursor:Landroid/database/Cursor;
    const/16 v38, 0x0

    .line 322
    .local v38, itemCount:I
    :goto_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 324
    const/16 v4, 0xc

    move/from16 v0, v38

    if-ne v0, v4, :cond_8

    .line 347
    :cond_7
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 328
    :cond_8
    invoke-virtual/range {v51 .. v51}, Landroid/content/ContentValues;->clear()V

    .line 329
    const-string v4, "intent"

    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v4, "title"

    move-object/from16 v0, v21

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v4, "iconType"

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v4, "icon"

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 333
    const-string v4, "iconPackage"

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v4, "iconResource"

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v4, "itemType"

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string v4, "appWidgetId"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v4, "cellX"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v4, "cellY"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v4, "spanX"

    move-object/from16 v0, v21

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-string v4, "spanY"

    move-object/from16 v0, v21

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v4, "screen"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string v4, "container"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v51

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 344
    move-object/from16 v0, v24

    move-object/from16 v1, v51

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 345
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_5

    .line 354
    .end local v15           #cellX:I
    .end local v16           #cellXIndex:I
    .end local v17           #cellY:I
    .end local v18           #cellYIndex:I
    .end local v19           #container:I
    .end local v20           #containerIndex:I
    .end local v21           #cursor:Landroid/database/Cursor;
    .end local v25           #displayModeIndex:I
    .end local v27           #foldId:J
    .end local v29           #iconIndex:I
    .end local v30           #iconPackageIndex:I
    .end local v31           #iconResourceIndex:I
    .end local v32           #iconTypeIndex:I
    .end local v33           #id:J
    .end local v35           #idIndex:I
    .end local v37           #intentIndex:I
    .end local v38           #itemCount:I
    .end local v39           #itemType:I
    .end local v40           #itemTypeIndex:I
    .end local v42           #screenIndex:I
    .end local v43           #sourceScreen:I
    .end local v46           #spanXIndex:I
    .end local v47           #spanYIndex:I
    .end local v48           #title:Ljava/lang/String;
    .end local v49           #titleIndex:I
    .end local v50           #uriIndex:I
    :cond_9
    add-int/lit8 v23, v23, 0x1

    .line 363
    .end local v51           #values:Landroid/content/ContentValues;
    :goto_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 216
    :goto_7
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_1

    .line 356
    :cond_a
    const-string v4, "DesktopMover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "##ignore extra sourceScreenIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/16 v36, 0x1

    goto :goto_6

    .line 360
    :cond_b
    const-string v4, "DesktopMover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "##jump empty sourceScreenIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v45

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_7

    .line 366
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_c
    if-eqz v36, :cond_d

    .line 367
    const/4 v4, 0x2

    .line 378
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 379
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 369
    :cond_d
    const/4 v4, 0x1

    .line 378
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 379
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 381
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #sourceUri:Landroid/net/Uri;
    .end local v13           #authority:Ljava/lang/String;
    .end local v23           #destinationScreenIndex:I
    .end local v24           #destinationUri:Landroid/net/Uri;
    .end local v41           #lastNoneEmptyScreen:I
    .end local v44           #sourceScreenCount:I
    .end local v45           #sourceScreenIndex:I
    :catch_2
    move-exception v7

    goto/16 :goto_4

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkDesktopMove()V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/DesktopMover;->isMoveable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    const v1, 0x7f0c013f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    :goto_0
    return-void

    .line 121
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/utils/DesktopMover;->showDialog(I)V

    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/baidu/launcher/utils/DesktopMover$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/utils/DesktopMover$2;-><init>(Lcom/baidu/launcher/utils/DesktopMover;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public isMoveable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v3, p0, Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v2

    .line 388
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    .line 389
    .local v0, launcher:Lcom/baidu/launcher/app/Launcher;
    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScreenCount()I

    move-result v1

    .line 391
    .local v1, screenCount:I
    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/homeview/Workspace;->isScreenEmpty(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 392
    const-string v3, "DesktopMover"

    const-string v4, "isMoveable:false"

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_2
    const-string v2, "DesktopMover"

    const-string v3, "isMoveable:true"

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    .line 110
    return-void
.end method

.method public setLauncher(Lcom/baidu/launcher/app/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 115
    return-void
.end method

.method public showDialog(I)V
    .locals 8
    .parameter "dialogType"

    .prologue
    const/4 v3, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f09002f

    const/16 v4, 0x7d3

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 571
    :goto_0
    return-void

    .line 448
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c0138

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0139

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00b6

    new-instance v3, Lcom/baidu/launcher/utils/DesktopMover$4;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/utils/DesktopMover$4;-><init>(Lcom/baidu/launcher/utils/DesktopMover;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00b7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 458
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->alertDialog:Landroid/app/AlertDialog;

    .line 459
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    .line 460
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 461
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 464
    :pswitch_1
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 469
    :goto_1
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    const v3, 0x7f0c013a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 471
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 476
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    .line 477
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 478
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 467
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_1

    .line 481
    :pswitch_2
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 486
    :goto_2
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    const v3, 0x7f0c013d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 488
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 489
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    .line 490
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 491
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 484
    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_2

    .line 494
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 495
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0c013c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/baidu/launcher/utils/DesktopMover$5;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/utils/DesktopMover$5;-><init>(Lcom/baidu/launcher/utils/DesktopMover;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->alertDialog:Landroid/app/AlertDialog;

    .line 565
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setType(I)V

    .line 567
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
