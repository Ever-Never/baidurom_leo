.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentPopularCityAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TransparentPopularCityAdapter.java"


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
    .line 20
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentPopularCityAdapter;->context:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, resultView:Landroid/view/View;
    const/4 v3, 0x0

    .line 30
    .local v3, viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentPopularCityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    .line 32
    .local v0, city:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    if-eqz p2, :cond_0

    .line 33
    move-object v2, p2

    .line 34
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;
    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;

    .line 45
    .restart local v3       #viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;
    :goto_0
    iget-object v4, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->setLocationCode(Ljava/lang/String;)V

    .line 46
    iget-object v4, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->setLocationName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->getTvLocation()Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    add-int/lit8 v4, p1, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_1

    .line 49
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->getLocationImage()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    :goto_1
    return-object v2

    .line 36
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentPopularCityAdapter;->context:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 38
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0300a6

    invoke-virtual {v1, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 40
    new-instance v3, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;

    .end local v3           #viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;
    const v4, 0x7f0801af

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f080208

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-direct {v3, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;-><init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 42
    .restart local v3       #viewHolder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 51
    .end local v1           #mInflater:Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->getLocationImage()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
