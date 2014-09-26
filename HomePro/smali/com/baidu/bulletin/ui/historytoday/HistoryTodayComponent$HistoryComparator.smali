.class Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryComparator;
.super Ljava/lang/Object;
.source "HistoryTodayComponent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v0, 0x0

    .line 268
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 269
    iget v1, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    iget v2, p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    if-le v1, v2, :cond_1

    .line 270
    const/4 v0, -0x1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 271
    :cond_1
    iget v1, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    iget v2, p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    if-eq v1, v2, :cond_0

    .line 273
    iget v1, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    iget v2, p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    if-ge v1, v2, :cond_0

    .line 274
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 263
    check-cast p1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    .end local p1
    check-cast p2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryComparator;->compare(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;)I

    move-result v0

    return v0
.end method
