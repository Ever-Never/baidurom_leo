.class public Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;
.super Lcom/baidu/launcher/data/item/HomeItemInfo;
.source "HomeBaiduWidgetInfo.java"


# instance fields
.field public baiduWidgetId:I

.field public empty:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/HomeItemInfo;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->empty:Z

    .line 19
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->itemType:I

    .line 20
    iput p1, p0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->baiduWidgetId:I

    .line 21
    return-void
.end method


# virtual methods
.method public buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 2
    .parameter "values"
    .parameter "context"

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/data/item/HomeItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 26
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/baidu/launcher/data/item/HomeBaiduWidgetInfo;->baiduWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    return-void
.end method
