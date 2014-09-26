.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/PopularCityAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PopularCityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 19
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/PopularCityAdapter;->context:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, resultView:Landroid/view/View;
    const/4 v3, 0x0

    .line 28
    .local v3, viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/PopularCityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    .line 30
    .local v0, city:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    if-eqz p2, :cond_0

    .line 31
    move-object v2, p2

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;
    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;

    .line 42
    .restart local v3       #viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;
    :goto_0
    iget-object v4, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->setLocationCode(Ljava/lang/String;)V

    .line 43
    iget-object v4, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->setLocationName(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->getTvLocation()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-object v2

    .line 34
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/PopularCityAdapter;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 36
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0300b7

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 38
    new-instance v3, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;

    .end local v3           #viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;
    const v4, 0x7f0801af

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;-><init>(Landroid/widget/TextView;)V

    .line 40
    .restart local v3       #viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
