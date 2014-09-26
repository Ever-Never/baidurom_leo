.class public Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
.super Ljava/lang/Object;
.source "RawHistoryTodayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;
    }
.end annotation


# static fields
.field public static final BIG_EVENT:I = 0x0

.field public static final BIRTH:I = 0x1

.field public static final DEATH:I = 0x2


# instance fields
.field private mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

.field public type:I

.field public words:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryEvent;

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public buildWords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

    invoke-interface {v0, p0}, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;->build(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildWords()Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

    return-object v0
.end method

.method public setBuildWords(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;)V
    .locals 0
    .parameter "buildWords"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"year\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, result:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"type\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"words\":["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->words:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryEvent;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->words:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryEvent;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->words:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryEvent;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    return-object v1
.end method
