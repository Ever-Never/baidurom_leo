.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/CityCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "CityCursorAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/CityCursorAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/CityCursorAdapter;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;

    .line 48
    .local v5, viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;
    const-string v6, "locationCode"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, locationCode:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->getLocationColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, cityName:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->toParentLocationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, parentCode:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/CityCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 61
    .local v4, values:Landroid/content/ContentValues;
    if-eqz v4, :cond_0

    .line 62
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->getLocationColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, parentCity:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v6, "###"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bind view:cityName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",locationCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",parentCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",parentCity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .end local v2           #parentCity:Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->getTvLocation()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v5, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->setLocationName(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->setLocationCode(Ljava/lang/String;)V

    .line 74
    return-void

    .line 67
    :cond_0
    const-string v6, "###"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ":bind view:cityName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",locationCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "no parentCity found!! parentCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 31
    .local v2, view:Landroid/view/View;
    const v4, 0x7f0801af

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 33
    .local v1, tvLocation:Landroid/widget/TextView;
    const-string v4, "locationCode"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, locationCode:Ljava/lang/String;
    new-instance v3, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;

    invoke-direct {v3, v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 37
    .local v3, viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    return-object v2
.end method
