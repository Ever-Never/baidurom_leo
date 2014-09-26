.class public Landroid/app/TaskStackBuilder;
.super Ljava/lang/Object;
.source "TaskStackBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskStackBuilder"


# instance fields
.field private mFirstTaskOnHome:Z

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/TaskStackBuilder;->mFirstTaskOnHome:Z

    .line 68
    iput-object p1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public static create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    new-instance v0, Landroid/app/TaskStackBuilder;

    invoke-direct {v0, p0}, Landroid/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;
    .locals 1
    .parameter "nextIntent"

    .prologue
    .line 94
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-object p0
.end method

.method public addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;
    .locals 2
    .parameter "nextIntent"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 112
    .local v0, target:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 113
    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 115
    :cond_0
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    .line 118
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 119
    return-object p0
.end method

.method public addParentStack(Landroid/app/Activity;)Landroid/app/TaskStackBuilder;
    .locals 3
    .parameter "sourceActivity"

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, parent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 138
    .local v1, target:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 139
    iget-object v2, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 141
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 144
    .end local v1           #target:Landroid/content/ComponentName;
    :cond_1
    return-object p0
.end method

.method public addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;
    .locals 9
    .parameter "sourceActivityName"

    .prologue
    .line 169
    iget-object v7, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 170
    .local v2, insertAt:I
    iget-object v7, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 172
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 173
    .local v1, info:Landroid/content/pm/ActivityInfo;
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 174
    .local v4, parentActivity:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 175
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v6, target:Landroid/content/ComponentName;
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 177
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 178
    if-nez v4, :cond_0

    if-nez v2, :cond_0

    invoke-static {v6}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 181
    .local v3, parent:Landroid/content/Intent;
    :goto_1
    iget-object v7, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v1           #info:Landroid/content/pm/ActivityInfo;
    .end local v3           #parent:Landroid/content/Intent;
    .end local v4           #parentActivity:Ljava/lang/String;
    .end local v6           #target:Landroid/content/ComponentName;
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "TaskStackBuilder"

    const-string v8, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 178
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/ActivityInfo;
    .restart local v4       #parentActivity:Ljava/lang/String;
    .restart local v6       #target:Landroid/content/ComponentName;
    :cond_0
    :try_start_1
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 187
    .end local v6           #target:Landroid/content/ComponentName;
    :cond_1
    return-object p0
.end method

.method public addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/app/TaskStackBuilder;"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, sourceActivityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    return-object v0
.end method

.method public editIntentAt(I)Landroid/content/Intent;
    .locals 1
    .parameter "index"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentCount()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIntents()[Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 303
    iget-object v3, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Landroid/content/Intent;

    .line 304
    .local v1, intents:[Landroid/content/Intent;
    array-length v3, v1

    if-nez v3, :cond_1

    .line 319
    :cond_0
    return-object v1

    .line 306
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 307
    .local v2, newIntent:Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    iget-boolean v3, p0, Landroid/app/TaskStackBuilder;->mFirstTaskOnHome:Z

    if-eqz v3, :cond_2

    .line 312
    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    :cond_2
    aput-object v2, v1, v4

    .line 316
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 317
    new-instance v4, Landroid/content/Intent;

    iget-object v3, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v4, v1, v0

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPendingIntent(II)Landroid/app/PendingIntent;
    .locals 1
    .parameter "requestCode"
    .parameter "flags"

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2
    .parameter "requestCode"
    .parameter "flags"
    .parameter "options"

    .prologue
    .line 272
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, p1, v1, p2, p3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 6
    .parameter "requestCode"
    .parameter "flags"
    .parameter "options"
    .parameter "user"

    .prologue
    .line 286
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object v2

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivitiesAsUser(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public setTaskOnHome(Z)V
    .locals 0
    .parameter "firstTaskOnHome"

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/app/TaskStackBuilder;->mFirstTaskOnHome:Z

    .line 84
    return-void
.end method

.method public startActivities()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method public startActivities(Landroid/os/Bundle;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 237
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 238
    return-void
.end method

.method public startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 2
    .parameter "options"
    .parameter "userHandle"

    .prologue
    .line 221
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iget-object v0, p0, Landroid/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->startActivitiesAsUser([Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 227
    return-void
.end method
