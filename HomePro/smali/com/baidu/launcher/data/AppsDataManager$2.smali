.class final Lcom/baidu/launcher/data/AppsDataManager$2;
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


# instance fields
.field aTitle:Ljava/lang/String;

.field bTitle:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
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

    .line 182
    iget v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v3, v4, :cond_3

    iget v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->itemType:I

    if-ne v3, v4, :cond_3

    .line 184
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v3, :cond_1

    .line 204
    .end local p1
    .end local p2
    :cond_0
    :goto_0
    return v0

    .line 185
    .restart local p1
    .restart local p2
    :cond_1
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v3, :cond_2

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 186
    :cond_2
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_0

    .line 189
    :cond_3
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_7

    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_7

    .line 190
    iget-boolean v3, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v3, :cond_0

    .line 191
    :cond_4
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-nez v0, :cond_5

    iget-boolean v0, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    .line 192
    :cond_5
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Lcom/baidu/launcher/data/item/ListItemInfo;->isPreset:Z

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    .line 193
    :cond_6
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

    .line 195
    :cond_7
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v3, :cond_8

    instance-of v3, p2, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-nez v3, :cond_0

    .line 197
    :cond_8
    instance-of v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v0, :cond_9

    instance-of v0, p2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v0, :cond_9

    move v0, v1

    .line 198
    goto :goto_0

    .line 199
    :cond_9
    instance-of v0, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v0, :cond_a

    instance-of v0, p2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    if-eqz v0, :cond_a

    .line 200
    check-cast p1, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local p1
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager$2;->aTitle:Ljava/lang/String;

    .line 201
    check-cast p2, Lcom/baidu/launcher/data/item/ListFolderInfo;

    .end local p2
    invoke-static {}, Lcom/baidu/launcher/data/AppsDataManager;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/AppsDataManager$2;->bTitle:Ljava/lang/String;

    .line 202
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/data/AppsDataManager$2;->aTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/launcher/data/AppsDataManager$2;->bTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .restart local p1
    .restart local p2
    :cond_a
    move v0, v2

    .line 204
    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    check-cast p1, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p1
    check-cast p2, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/data/AppsDataManager$2;->compare(Lcom/baidu/launcher/data/item/ListItemInfo;Lcom/baidu/launcher/data/item/ListItemInfo;)I

    move-result v0

    return v0
.end method
