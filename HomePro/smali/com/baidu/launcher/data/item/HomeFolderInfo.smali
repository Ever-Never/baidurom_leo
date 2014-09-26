.class public Lcom/baidu/launcher/data/item/HomeFolderInfo;
.super Lcom/baidu/launcher/data/item/HomeItemInfo;
.source "HomeFolderInfo.java"

# interfaces
.implements Lcom/baidu/launcher/data/item/IFolderInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/data/item/HomeFolderInfo$1;,
        Lcom/baidu/launcher/data/item/HomeFolderInfo$FolderComparator;
    }
.end annotation


# instance fields
.field private mComparator:Lcom/baidu/launcher/data/item/HomeFolderInfo$FolderComparator;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/HomeItemInfo;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mContents:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->itemType:I

    .line 50
    const-wide/16 v0, -0x64

    iput-wide v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->container:J

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/data/item/ListFolderInfo;)V
    .locals 5
    .parameter "listFolder"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/HomeItemInfo;-><init>()V

    .line 37
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mContents:Ljava/util/ArrayList;

    .line 57
    const/4 v4, 0x2

    iput v4, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->itemType:I

    .line 58
    invoke-virtual {p1}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->title:Ljava/lang/CharSequence;

    .line 59
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->isPreset:Z

    .line 60
    iget-boolean v4, p1, Lcom/baidu/launcher/data/item/ListFolderInfo;->isDisable:Z

    iput-boolean v4, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->isDisable:Z

    .line 61
    invoke-virtual {p1}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 62
    .local v1, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/ListAppInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 63
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    new-instance v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    invoke-direct {v3, v0}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 64
    .local v3, shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget v4, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->index:I

    iput v4, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    .line 65
    iget-object v4, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v0           #app:Lcom/baidu/launcher/data/item/ListAppInfo;
    .end local v3           #shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 87
    instance-of v2, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-nez v2, :cond_0

    .line 97
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 88
    check-cast v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 89
    .local v1, shortcut:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    iget-object v2, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mComparator:Lcom/baidu/launcher/data/item/HomeFolderInfo$FolderComparator;

    if-nez v2, :cond_1

    .line 90
    new-instance v2, Lcom/baidu/launcher/data/item/HomeFolderInfo$FolderComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/baidu/launcher/data/item/HomeFolderInfo$FolderComparator;-><init>(Lcom/baidu/launcher/data/item/HomeFolderInfo$1;)V

    iput-object v2, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mComparator:Lcom/baidu/launcher/data/item/HomeFolderInfo$FolderComparator;

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mContents:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mComparator:Lcom/baidu/launcher/data/item/HomeFolderInfo$FolderComparator;

    invoke-static {v2, v1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 93
    .local v0, index:I
    if-gez v0, :cond_2

    .line 94
    add-int/lit8 v2, v0, 0x1

    neg-int v0, v2

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 2
    .parameter "values"
    .parameter "context"

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/data/item/HomeItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 160
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public get(I)Lcom/baidu/launcher/data/item/BaseItemInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/BaseItemInfo;

    return-object v0
.end method

.method public getAll()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContainer()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->container:J

    return-wide v0
.end method

.method public getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0007

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getID()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->id:J

    return-wide v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->itemType:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mOpened:Z

    return v0
.end method

.method public isPreset()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->isPreset:Z

    return v0
.end method

.method public remove(Lcom/baidu/launcher/data/item/BaseItemInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .parameter "aOpen"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->mOpened:Z

    .line 145
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/baidu/launcher/data/item/HomeFolderInfo;->title:Ljava/lang/CharSequence;

    .line 79
    return-void
.end method
