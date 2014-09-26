.class public Lcom/baidu/bulletin/network/protocol/TextBuildWords;
.super Ljava/lang/Object;
.source "TextBuildWords.java"

# interfaces
.implements Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;)Ljava/lang/String;
    .locals 7
    .parameter "historyDesc"

    .prologue
    .line 11
    const-string v4, ""

    .line 13
    .local v4, result:Ljava/lang/String;
    iget-object v0, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->words:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryEvent;

    .local v0, arr$:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryEvent;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 14
    .local v1, event:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryEvent;
    iget v5, v1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryEvent;->type:I

    packed-switch v5, :pswitch_data_0

    .line 13
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryEvent;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18
    goto :goto_1

    .line 25
    .end local v1           #event:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryEvent;
    :cond_0
    iget v5, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->type:I

    packed-switch v5, :pswitch_data_1

    .line 34
    :pswitch_1
    return-object v4

    .line 14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 25
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
