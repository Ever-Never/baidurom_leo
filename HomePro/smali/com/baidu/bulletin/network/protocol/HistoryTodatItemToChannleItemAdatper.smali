.class public Lcom/baidu/bulletin/network/protocol/HistoryTodatItemToChannleItemAdatper;
.super Ljava/lang/Object;
.source "HistoryTodatItemToChannleItemAdatper.java"

# interfaces
.implements Lcom/baidu/bulletin/network/protocol/IRawChannelItemsAdatper;


# instance fields
.field private mRawHistoryTodayItems:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;


# direct methods
.method public constructor <init>([Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;)V
    .locals 0
    .parameter "rawHistoryTodayItem"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/baidu/bulletin/network/protocol/HistoryTodatItemToChannleItemAdatper;->mRawHistoryTodayItems:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    .line 14
    return-void
.end method

.method private convertContent(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;)Ljava/lang/String;
    .locals 5
    .parameter "historyTodayItem"

    .prologue
    .line 49
    const-string v2, "["

    .line 51
    .local v2, result:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->content:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 53
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->content:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    aget-object v0, v3, v1

    .line 54
    .local v0, desc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->content:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0           #desc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    return-object v2
.end method


# virtual methods
.method public get()[Lcom/baidu/bulletin/network/protocol/RawChannelItem;
    .locals 6

    .prologue
    .line 19
    const/4 v3, 0x0

    .line 21
    .local v3, rawChannelItems:[Lcom/baidu/bulletin/network/protocol/RawChannelItem;
    iget-object v4, p0, Lcom/baidu/bulletin/network/protocol/HistoryTodatItemToChannleItemAdatper;->mRawHistoryTodayItems:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    if-eqz v4, :cond_1

    .line 22
    iget-object v4, p0, Lcom/baidu/bulletin/network/protocol/HistoryTodatItemToChannleItemAdatper;->mRawHistoryTodayItems:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    array-length v4, v4

    new-array v3, v4, [Lcom/baidu/bulletin/network/protocol/RawChannelItem;

    .line 24
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/baidu/bulletin/network/protocol/HistoryTodatItemToChannleItemAdatper;->mRawHistoryTodayItems:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 26
    iget-object v4, p0, Lcom/baidu/bulletin/network/protocol/HistoryTodatItemToChannleItemAdatper;->mRawHistoryTodayItems:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    aget-object v0, v4, v1

    .line 28
    .local v0, historyTodayItem:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;
    new-instance v2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;

    invoke-direct {v2}, Lcom/baidu/bulletin/network/protocol/RawChannelItem;-><init>()V

    .line 30
    .local v2, item:Lcom/baidu/bulletin/network/protocol/RawChannelItem;
    iget-wide v4, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->id:J

    iput-wide v4, v2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->id:J

    .line 31
    iget-object v4, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->brief:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_1
    iput-object v4, v2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->brief:Ljava/lang/String;

    .line 37
    iget-wide v4, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->time:J

    iput-wide v4, v2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->time:J

    .line 38
    iget-object v4, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->title:Ljava/lang/String;

    iput-object v4, v2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->title:Ljava/lang/String;

    .line 40
    invoke-direct {p0, v0}, Lcom/baidu/bulletin/network/protocol/HistoryTodatItemToChannleItemAdatper;->convertContent(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/baidu/bulletin/network/protocol/RawChannelItem;->content:Ljava/lang/String;

    .line 42
    aput-object v2, v3, v1

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iget-object v4, v0, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;->brief:Ljava/lang/String;

    goto :goto_1

    .line 45
    .end local v0           #historyTodayItem:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;
    .end local v1           #i:I
    .end local v2           #item:Lcom/baidu/bulletin/network/protocol/RawChannelItem;
    :cond_1
    return-object v3
.end method
