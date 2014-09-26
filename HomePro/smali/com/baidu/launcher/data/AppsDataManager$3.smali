.class final Lcom/baidu/launcher/data/AppsDataManager$3;
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
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/baidu/launcher/data/item/ListItemInfo;Lcom/baidu/launcher/data/item/ListItemInfo;)I
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/16 v4, 0xb

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 211
    iget v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v3, v4, :cond_3

    iget v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v3, v4, :cond_3

    .line 213
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v3, :cond_1

    move v0, v1

    .line 237
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return v0

    .line 214
    .restart local p1
    .restart local p2
    :cond_1
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v3, :cond_2

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_2

    move v0, v2

    goto :goto_0

    .line 215
    :cond_2
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v3, :cond_0

    .line 218
    :cond_3
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_9

    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_9

    .line 219
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 220
    :cond_4
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v3, :cond_5

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_5

    move v0, v2

    goto :goto_0

    .line 221
    :cond_5
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v3, :cond_0

    :cond_6
    move-object v0, p1

    .line 222
    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-wide v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    move-object v0, p2

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-wide v5, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move-object v0, p1

    .line 223
    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-wide v3, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    move-object v0, p2

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-wide v0, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->clickCount:J

    cmp-long v0, v3, v0

    if-gez v0, :cond_8

    move v0, v2

    goto :goto_0

    .line 224
    :cond_8
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 226
    :cond_9
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_a

    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_a

    move v0, v1

    .line 227
    goto :goto_0

    .line 228
    :cond_a
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_b

    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_b

    move v0, v2

    .line 229
    goto :goto_0

    .line 230
    :cond_b
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_0

    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 231
    check-cast v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-wide v3, v0, Lcom/baidu/launcher/data/item/ListFolderInfo;->clickCount:J

    move-object v0, p2

    check-cast v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-wide v5, v0, Lcom/baidu/launcher/data/item/ListFolderInfo;->clickCount:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_c

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move-object v0, p1

    .line 232
    check-cast v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-wide v3, v0, Lcom/baidu/launcher/data/item/ListFolderInfo;->clickCount:J

    move-object v0, p2

    check-cast v0, Lcom/baidu/launcher/data/item/ListFolderInfo;

    iget-wide v0, v0, Lcom/baidu/launcher/data/item/ListFolderInfo;->clickCount:J

    cmp-long v0, v3, v0

    if-gez v0, :cond_d

    move v0, v2

    goto/16 :goto_0

    .line 233
    :cond_d
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    check-cast p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local p1
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local p2
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    check-cast p1, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p1
    check-cast p2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/data/AppsDataManager$3;->compare(Lcom/baidu/launcher/data/item/ListItemInfo;Lcom/baidu/launcher/data/item/ListItemInfo;)I

    move-result v0

    return v0
.end method
