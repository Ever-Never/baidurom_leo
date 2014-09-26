.class Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy$ChannelItemCompator;
.super Ljava/lang/Object;
.source "HistoryTodayPageStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChannelItemCompator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/bulletin/entity/ChannelItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy$ChannelItemCompator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/entity/ChannelItem;)I
    .locals 5
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v0, 0x0

    .line 384
    iget-wide v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->time:J

    iget-wide v3, p2, Lcom/baidu/bulletin/entity/ChannelItem;->time:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 385
    const/4 v0, 0x1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    iget-wide v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->time:J

    iget-wide v3, p2, Lcom/baidu/bulletin/entity/ChannelItem;->time:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 388
    iget-wide v1, p1, Lcom/baidu/bulletin/entity/ChannelItem;->time:J

    iget-wide v3, p2, Lcom/baidu/bulletin/entity/ChannelItem;->time:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 389
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 379
    check-cast p1, Lcom/baidu/bulletin/entity/ChannelItem;

    .end local p1
    check-cast p2, Lcom/baidu/bulletin/entity/ChannelItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bulletin/pager/HistoryTodayPageStrategy$ChannelItemCompator;->compare(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/entity/ChannelItem;)I

    move-result v0

    return v0
.end method
