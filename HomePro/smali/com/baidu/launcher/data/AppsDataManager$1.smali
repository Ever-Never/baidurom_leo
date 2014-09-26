.class final Lcom/baidu/launcher/data/AppsDataManager$1;
.super Ljava/lang/Object;
.source "AppsDataManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/data/AppsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/baidu/launcher/data/item/ListItemInfo;Lcom/baidu/launcher/data/item/ListItemInfo;)I
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/16 v4, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 150
    iget v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v3, v4, :cond_3

    iget v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v3, v4, :cond_3

    .line 152
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v3, :cond_2

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 154
    :cond_2
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_0

    .line 156
    :cond_3
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_4

    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_4

    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-nez v3, :cond_0

    .line 158
    :cond_4
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_5

    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_5

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_5

    move v0, v1

    .line 159
    goto :goto_0

    .line 160
    :cond_5
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_8

    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_8

    .line 161
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_0

    .line 162
    :cond_6
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v0, :cond_7

    iget-boolean v0, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_0

    .line 163
    :cond_7
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_0

    .line 165
    :cond_8
    iget v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    iget v4, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    if-lt v3, v4, :cond_0

    .line 167
    iget v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    iget v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    if-ne v0, v3, :cond_9

    move v0, v2

    .line 168
    goto :goto_0

    :cond_9
    move v0, v1

    .line 170
    goto :goto_0

    :cond_a
    move v0, v2

    .line 173
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    check-cast p1, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p1
    check-cast p2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/data/AppsDataManager$1;->compare(Lcom/baidu/launcher/data/item/ListItemInfo;Lcom/baidu/launcher/data/item/ListItemInfo;)I

    move-result v0

    return v0
.end method
