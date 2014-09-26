.class public Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
.super Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;
.source "AppRunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessItem"
.end annotation


# instance fields
.field mActiveSince:J

.field public mClient:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

.field public final mDependentProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field public mInteresting:Z

.field mIsStarted:Z

.field mIsSystem:Z

.field public mLastNumDependentProcesses:I

.field public mMergedItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$MergedItem;

.field public mPid:I

.field public final mProcessName:Ljava/lang/String;

.field public mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field public mRunningSeq:I

.field public final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "uid"
    .parameter "processName"

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;-><init>(Z)V

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    .line 182
    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mUid:I

    .line 183
    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, dest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$BaseItem;>;"
    .local p2, destProc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;>;"
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 353
    .local v0, NP:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 354
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 355
    .local v2, proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    invoke-virtual {v2, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 356
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget v3, v2, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 358
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v2           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_1
    return-void
.end method

.method buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6
    .parameter "context"
    .parameter "pm"
    .parameter "curSeq"

    .prologue
    .line 329
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 330
    .local v0, NP:I
    const/4 v1, 0x0

    .line 331
    .local v1, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 332
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 333
    .local v3, proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    iget-object v4, v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mClient:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    if-eq v4, p0, :cond_0

    .line 334
    const/4 v1, 0x1

    .line 335
    iput-object p0, v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mClient:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;

    .line 337
    :cond_0
    iput p3, v3, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mCurSeq:I

    .line 338
    invoke-virtual {v3, p2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 339
    invoke-virtual {v3, p1, p2, p3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    .end local v3           #proc:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;
    :cond_1
    iget v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mLastNumDependentProcesses:I

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 343
    const/4 v1, 0x1

    .line 344
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iput v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mLastNumDependentProcesses:I

    .line 347
    :cond_2
    return v1
.end method

.method public ensureLabel(Landroid/content/pm/PackageManager;)V
    .locals 10
    .parameter "pm"

    .prologue
    .line 187
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 256
    :goto_0
    return-void

    .line 192
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 193
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mUid:I

    if-ne v8, v9, :cond_1

    .line 194
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 195
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v8

    .line 204
    :cond_1
    iget v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, pkgs:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 209
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 210
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 211
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 214
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 220
    :cond_2
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 222
    .local v4, name:Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p1, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 223
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_3

    .line 224
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 226
    .local v5, nm:Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 227
    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 228
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 229
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 233
    .end local v5           #nm:Ljava/lang/CharSequence;
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v8

    .line 220
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 239
    .end local v4           #name:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 240
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;

    iget-object v8, v8, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    .line 242
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 243
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 249
    :cond_5
    const/4 v8, 0x0

    :try_start_3
    aget-object v8, v7, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 250
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 251
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 252
    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 254
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v8

    goto/16 :goto_0
.end method

.method updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 10
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v9, 0x0

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 262
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 263
    .local v2, changed:Z
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;

    .line 264
    .local v4, si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    if-nez v4, :cond_0

    .line 265
    const/4 v2, 0x1

    .line 266
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;

    .end local v4           #si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    invoke-direct {v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;-><init>()V

    .line 267
    .restart local v4       #si:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;
    iput-object p2, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 269
    :try_start_0
    iget-object v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    iget-object v5, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v3, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 274
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 275
    iget-object v5, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mPackageInfo:Landroid/content/pm/ApplicationInfo;

    .line 276
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v6, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mCurSeq:I

    iput v5, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mCurSeq:I

    .line 279
    iput-object p2, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 280
    iget-wide v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    iget-wide v0, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 281
    .local v0, activeSince:J
    :goto_2
    iget-wide v5, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mActiveSince:J

    cmp-long v5, v5, v0

    if-eqz v5, :cond_1

    .line 282
    iput-wide v0, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mActiveSince:J

    .line 283
    const/4 v2, 0x1

    .line 285
    :cond_1
    iget-object v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget v5, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v5, :cond_5

    .line 286
    iget-boolean v5, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mShownAsStarted:Z

    if-eqz v5, :cond_2

    .line 287
    iput-boolean v9, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mShownAsStarted:Z

    .line 288
    const/4 v2, 0x1

    .line 309
    :cond_2
    :goto_3
    return v2

    .line 274
    .end local v0           #activeSince:J
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 280
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 301
    .restart local v0       #activeSince:J
    :cond_5
    iget-boolean v5, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mShownAsStarted:Z

    if-nez v5, :cond_2

    .line 302
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ServiceItem;->mShownAsStarted:Z

    .line 303
    const/4 v2, 0x1

    goto :goto_3

    .line 270
    .end local v0           #activeSince:J
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method updateSize(Landroid/content/Context;JI)Z
    .locals 4
    .parameter "context"
    .parameter "pss"
    .parameter "curSeq"

    .prologue
    const/4 v3, 0x0

    .line 313
    const-wide/16 v1, 0x400

    mul-long/2addr v1, p2

    iput-wide v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mSize:J

    .line 314
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mCurSeq:I

    if-ne v1, p4, :cond_0

    .line 315
    iget-wide v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mSize:J

    invoke-static {p1, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, sizeStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppRunningState$ProcessItem;->mSizeStr:Ljava/lang/String;

    .line 325
    .end local v0           #sizeStr:Ljava/lang/String;
    :cond_0
    return v3
.end method
