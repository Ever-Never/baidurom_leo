.class public Lcom/baidu/launcher/data/AppsDataManager$InfoComparator;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/data/AppsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/launcher/data/item/ListItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/baidu/launcher/data/item/ListItemInfo;Lcom/baidu/launcher/data/item/ListItemInfo;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1280
    iget v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 1281
    .local v0, aIndex:I
    iget v1, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 1283
    .local v1, bIndex:I
    if-ge v0, v1, :cond_0

    .line 1284
    const/4 v2, -0x1

    .line 1288
    :goto_0
    return v2

    .line 1285
    :cond_0
    if-ne v0, v1, :cond_1

    .line 1286
    const/4 v2, 0x0

    goto :goto_0

    .line 1288
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1277
    check-cast p1, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p1
    check-cast p2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/data/AppsDataManager$InfoComparator;->compare(Lcom/baidu/launcher/data/item/ListItemInfo;Lcom/baidu/launcher/data/item/ListItemInfo;)I

    move-result v0

    return v0
.end method
