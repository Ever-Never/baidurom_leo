.class Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppStoreList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/AppStoreList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppStorePopupAdapter"
.end annotation


# instance fields
.field iconBitmap:Landroid/graphics/Bitmap;

.field mAppItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/ui/applistview/AppStoreList;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 252
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 253
    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->mAppItemList:Ljava/util/ArrayList;

    .line 254
    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->iconBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/applistview/AppStoreList;Lcom/baidu/launcher/ui/applistview/AppStoreList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;-><init>(Lcom/baidu/launcher/ui/applistview/AppStoreList;)V

    return-void
.end method


# virtual methods
.method public clearItems()V
    .locals 3

    .prologue
    .line 300
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->mAppItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/business/item/RecommendAppItem;

    .line 301
    .local v1, item:Lcom/baidu/launcher/business/item/RecommendAppItem;
    invoke-virtual {v1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getIconbmp()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {v1}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getIconbmp()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 305
    .end local v1           #item:Lcom/baidu/launcher/business/item/RecommendAppItem;
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->mAppItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 306
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->mAppItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->mAppItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 284
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 261
    if-nez p2, :cond_0

    .line 262
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->this$0:Lcom/baidu/launcher/ui/applistview/AppStoreList;

    iget-object v3, v3, Lcom/baidu/launcher/ui/applistview/AppStoreList;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 267
    .local v2, view:Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->mAppItemList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 279
    :goto_1
    return-object v2

    .line 265
    .end local v2           #view:Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0

    .line 271
    :cond_1
    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 272
    .local v0, appIcon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->mAppItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/business/item/RecommendAppItem;

    invoke-virtual {v3}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getIconbmp()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->iconBitmap:Landroid/graphics/Bitmap;

    .line 273
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 274
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    :cond_2
    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 278
    .local v1, menuItem:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->mAppItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/business/item/RecommendAppItem;

    invoke-virtual {v3}, Lcom/baidu/launcher/business/item/RecommendAppItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setStoresMap(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/business/item/RecommendAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, aAppItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/business/item/RecommendAppItem;>;"
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppStoreList$AppStorePopupAdapter;->mAppItemList:Ljava/util/ArrayList;

    .line 258
    return-void
.end method
