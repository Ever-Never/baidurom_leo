.class public Lcom/baidu/launcher/data/item/ListAppInfo;
.super Lcom/baidu/launcher/data/item/ListItemInfo;
.source "ListAppInfo.java"


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/ListItemInfo;-><init>()V

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->itemType:I

    .line 25
    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Lcom/baidu/launcher/data/IconCache;)V
    .locals 3
    .parameter "info"
    .parameter "iconCache"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/ListItemInfo;-><init>()V

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    .line 33
    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->container:J

    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    const/high16 v1, 0x1020

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/data/item/ListAppInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 37
    invoke-virtual {p2, p0, p1}, Lcom/baidu/launcher/data/IconCache;->getTitleAndIcon(Lcom/baidu/launcher/data/item/ListAppInfo;Landroid/content/pm/ResolveInfo;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/baidu/launcher/data/item/ListItemInfo;-><init>(Lcom/baidu/launcher/data/item/ListItemInfo;)V

    .line 42
    iget-object v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->componentName:Landroid/content/ComponentName;

    .line 43
    iget-object v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    .line 44
    iget-object v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    .line 45
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    .line 46
    return-void

    .line 44
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 3
    .parameter "values"
    .parameter "context"

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/data/item/ListItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 50
    iget-object v1, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, uri:Ljava/lang/String;
    :goto_0
    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void

    .line 50
    .end local v0           #uri:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    const/16 v0, 0xa

    iput v0, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->itemType:I

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplicationInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
