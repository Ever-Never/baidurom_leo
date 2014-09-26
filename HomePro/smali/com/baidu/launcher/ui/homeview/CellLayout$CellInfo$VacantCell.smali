.class final Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VacantCell"
.end annotation


# static fields
.field private static final POOL_LIMIT:I = 0x64

.field private static sAcquiredCount:I

.field private static final sLock:Ljava/lang/Object;

.field private static sRoot:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;


# instance fields
.field cellX:I

.field cellY:I

.field private next:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

.field spanX:I

.field spanY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1521
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    .line 1523
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire()Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    .locals 3

    .prologue
    .line 1529
    sget-object v2, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1530
    :try_start_0
    sget-object v1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    if-nez v1, :cond_0

    .line 1531
    new-instance v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;-><init>()V

    monitor-exit v2

    .line 1538
    .local v0, info:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    :goto_0
    return-object v0

    .line 1534
    .end local v0           #info:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    .line 1535
    .restart local v0       #info:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    iget-object v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->next:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    sput-object v1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    .line 1536
    sget v1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    .line 1538
    monitor-exit v2

    goto :goto_0

    .line 1539
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method release()V
    .locals 3

    .prologue
    .line 1543
    sget-object v1, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1544
    :try_start_0
    sget v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 1545
    sget v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sAcquiredCount:I

    .line 1546
    sget-object v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->next:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    .line 1547
    sput-object p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->sRoot:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    .line 1549
    :cond_0
    monitor-exit v1

    .line 1550
    return-void

    .line 1549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VacantCell[x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
