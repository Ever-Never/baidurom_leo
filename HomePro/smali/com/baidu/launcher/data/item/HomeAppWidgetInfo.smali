.class public Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;
.super Lcom/baidu/launcher/data/item/HomeItemInfo;
.source "HomeAppWidgetInfo.java"


# instance fields
.field public appWidgetId:I

.field public hostView:Landroid/appwidget/AppWidgetHostView;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "appWidgetId"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/HomeItemInfo;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 50
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->itemType:I

    .line 51
    iput p1, p0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->appWidgetId:I

    .line 52
    return-void
.end method


# virtual methods
.method public buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 5
    .parameter "values"
    .parameter "context"

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/data/item/HomeItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 57
    const-string v3, "appWidgetId"

    iget v4, p0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->appWidgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    invoke-static {p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iget v4, p0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 59
    .local v0, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 61
    .local v1, cn:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 62
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v2, uri:Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    const-string v3, "intent"

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
