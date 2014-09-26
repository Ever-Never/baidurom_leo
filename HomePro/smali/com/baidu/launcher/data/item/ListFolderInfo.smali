.class public Lcom/baidu/launcher/data/item/ListFolderInfo;
.super Lcom/baidu/launcher/data/item/ListItemInfo;
.source "ListFolderInfo.java"

# interfaces
.implements Lcom/baidu/launcher/data/item/IFolderInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/data/item/ListFolderInfo$1;,
        Lcom/baidu/launcher/data/item/ListFolderInfo$FolderComparator;
    }
.end annotation


# instance fields
.field private mAllAppsContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mComparator:Lcom/baidu/launcher/data/item/ListFolderInfo$FolderComparator;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOpened:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/ListItemInfo;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllAppsContents:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllItems:Ljava/util/ArrayList;

    .line 32
    const/16 v0, 0xb

    iput v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->itemType:I

    .line 33
    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->container:J

    .line 34
    return-void
.end method


# virtual methods
.method public AdjustContetsForDisplay()V
    .locals 4

    .prologue
    .line 104
    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 106
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 107
    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 108
    .local v1, info:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-boolean v3, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v0, v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 114
    :cond_2
    iget-boolean v3, v1, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    .end local v1           #info:Lcom/baidu/launcher/data/item/ListAppInfo;
    :cond_3
    return-void
.end method

.method public add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 55
    instance-of v2, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 56
    check-cast v0, Lcom/baidu/launcher/data/item/ListAppInfo;

    .line 57
    .local v0, app:Lcom/baidu/launcher/data/item/ListAppInfo;
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mComparator:Lcom/baidu/launcher/data/item/ListFolderInfo$FolderComparator;

    if-nez v2, :cond_2

    .line 58
    new-instance v2, Lcom/baidu/launcher/data/item/ListFolderInfo$FolderComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/baidu/launcher/data/item/ListFolderInfo$FolderComparator;-><init>(Lcom/baidu/launcher/data/item/ListFolderInfo$1;)V

    iput-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mComparator:Lcom/baidu/launcher/data/item/ListFolderInfo$FolderComparator;

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mComparator:Lcom/baidu/launcher/data/item/ListFolderInfo$FolderComparator;

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 62
    .local v1, index:I
    if-gez v1, :cond_3

    .line 63
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 66
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    iget-boolean v2, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    if-nez v2, :cond_4

    .line 69
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 70
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_4
    :goto_1
    iget-boolean v2, v0, Lcom/baidu/launcher/data/item/ListAppInfo;->isVisible:Z

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_6

    .line 78
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_5
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 80
    :cond_6
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 2
    .parameter "values"
    .parameter "context"

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/data/item/ListItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 38
    const-string v0, "title"

    invoke-virtual {p0}, Lcom/baidu/launcher/data/item/ListFolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public get(I)Lcom/baidu/launcher/data/item/BaseItemInfo;
    .locals 2
    .parameter "index"

    .prologue
    .line 87
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/BaseItemInfo;

    goto :goto_0
.end method

.method public getAll()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllAppsContents:Ljava/util/ArrayList;

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getAllAppSize()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getContainer()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->container:J

    return-wide v0
.end method

.method public getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0007

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFromAllItems(I)Lcom/baidu/launcher/data/item/BaseItemInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/data/item/BaseItemInfo;

    return-object v0
.end method

.method public getID()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->id:J

    return-wide v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->itemType:I

    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 157
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->AppListMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mOpened:Z

    return v0
.end method

.method public isPreset()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->isPreset:Z

    return v0
.end method

.method public remove(Lcom/baidu/launcher/data/item/BaseItemInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllAppsContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    return-void
.end method

.method public removeAllDisplayItem()V
    .locals 4

    .prologue
    .line 136
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 137
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 138
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllAppsContents:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mAllItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 142
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .parameter "aOpen"

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->mOpened:Z

    .line 180
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/launcher/data/item/ListFolderInfo;->title:Ljava/lang/CharSequence;

    .line 51
    return-void
.end method
