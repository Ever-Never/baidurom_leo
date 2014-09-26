.class public Lcom/inveno/flow/database/FlyshareDb$DaoConfig;
.super Ljava/lang/Object;
.source "FlyshareDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flow/database/FlyshareDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaoConfig"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dbName:Ljava/lang/String;

.field private dbUpdateListener:Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;

.field private dbVersion:I

.field private debug:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->context:Landroid/content/Context;

    .line 446
    const-string v0, "flyshare.db"

    iput-object v0, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->dbName:Ljava/lang/String;

    .line 447
    iput v1, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->dbVersion:I

    .line 448
    iput-boolean v1, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->debug:Z

    .line 444
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDbUpdateListener()Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->dbUpdateListener:Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;

    return-object v0
.end method

.method public getDbVersion()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->dbVersion:I

    return v0
.end method

.method public isDebug()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->debug:Z

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->context:Landroid/content/Context;

    .line 457
    return-void
.end method

.method public setDbName(Ljava/lang/String;)V
    .locals 0
    .parameter "dbName"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->dbName:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setDbUpdateListener(Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;)V
    .locals 0
    .parameter "dbUpdateListener"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->dbUpdateListener:Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;

    .line 489
    return-void
.end method

.method public setDbVersion(I)V
    .locals 0
    .parameter "dbVersion"

    .prologue
    .line 472
    iput p1, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->dbVersion:I

    .line 473
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->debug:Z

    .line 481
    return-void
.end method
