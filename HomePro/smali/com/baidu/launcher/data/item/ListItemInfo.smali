.class public Lcom/baidu/launcher/data/item/ListItemInfo;
.super Lcom/baidu/launcher/data/item/BaseItemInfo;
.source "ListItemInfo.java"


# instance fields
.field public index:I

.field public isVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/BaseItemInfo;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/data/item/ListItemInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/baidu/launcher/data/item/BaseItemInfo;-><init>(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    .line 29
    iget v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    iput v0, p0, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    .line 30
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    .line 31
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/ListItemInfo;->isDisable:Z

    .line 32
    return-void
.end method


# virtual methods
.method public buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 2
    .parameter "values"
    .parameter "context"

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/data/item/BaseItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 36
    const-string v0, "sort_index"

    iget v1, p0, Lcom/baidu/launcher/data/item/ListItemInfo;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    const-string v1, "visible"

    iget-boolean v0, p0, Lcom/baidu/launcher/data/item/ListItemInfo;->isVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
