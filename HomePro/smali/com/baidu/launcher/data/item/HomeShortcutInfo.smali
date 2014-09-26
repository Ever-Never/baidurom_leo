.class public Lcom/baidu/launcher/data/item/HomeShortcutInfo;
.super Lcom/baidu/launcher/data/item/HomeItemInfo;
.source "HomeShortcutInfo.java"


# instance fields
.field public customIcon:Z

.field public iconResource:Landroid/content/Intent$ShortcutIconResource;

.field public intent:Landroid/content/Intent;

.field public needCheckIntent:Z

.field public usingFallbackIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/HomeItemInfo;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->needCheckIntent:Z

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->itemType:I

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/HomeItemInfo;-><init>()V

    .line 64
    iput-boolean v2, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->needCheckIntent:Z

    .line 74
    iput v2, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->itemType:I

    .line 75
    iget-object v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->replacedIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->replacedIntent:Landroid/content/Intent;

    .line 76
    iput v1, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->spanX:I

    .line 77
    iput v1, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->spanY:I

    .line 78
    iget-object v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 79
    iget-object v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 80
    iput-boolean v2, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->customIcon:Z

    .line 81
    iget-object v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 82
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->isPreset:Z

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isPreset:Z

    .line 83
    iget-wide v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->businessTableID:J

    iput-wide v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->businessTableID:J

    .line 84
    iget v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->status:I

    iput v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->status:I

    .line 85
    iget-wide v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->businessStrategyKey:J

    iput-wide v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->businessStrategyKey:J

    .line 86
    iget-object v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->businessURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->businessURL:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->businessDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->businessDescription:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->dependPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->dependPackage:Ljava/lang/String;

    .line 89
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->isDisable:Z

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->isDisable:Z

    .line 90
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static dumpShortcutInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "tag"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/HomeShortcutInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .line 159
    .local v1, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " customIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->customIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .end local v1           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 5
    .parameter "values"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 122
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/data/item/HomeItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 124
    iget-object v3, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, titleStr:Ljava/lang/String;
    :goto_0
    const-string v3, "title"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, uri:Ljava/lang/String;
    :goto_1
    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-boolean v2, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->customIcon:Z

    if-eqz v2, :cond_3

    .line 131
    const-string v2, "iconType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    iget-object v2, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 147
    :cond_0
    :goto_2
    return-void

    .end local v0           #titleStr:Ljava/lang/String;
    .end local v1           #uri:Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 124
    goto :goto_0

    .restart local v0       #titleStr:Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 127
    goto :goto_1

    .line 135
    .restart local v1       #uri:Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_4

    .line 136
    iget-object v2, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 138
    :cond_4
    const-string v2, "iconType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    iget-object v2, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    .line 141
    const-string v2, "iconPackage"

    iget-object v3, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "iconResource"

    iget-object v3, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 98
    invoke-static {p1}, Lcom/baidu/launcher/data/IconCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/IconCache;

    move-result-object v0

    .line 99
    .local v0, iconCache:Lcom/baidu/launcher/data/IconCache;
    iget-object v1, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 100
    iget-object v1, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/data/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->usingFallbackIcon:Z

    .line 102
    .end local v0           #iconCache:Lcom/baidu/launcher/data/IconCache;
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 114
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->itemType:I

    .line 118
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->title:Ljava/lang/CharSequence;

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
