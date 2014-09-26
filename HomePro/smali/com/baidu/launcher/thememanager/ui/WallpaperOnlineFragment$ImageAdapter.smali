.class Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperOnlineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mCategoryItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    .line 153
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->mContext:Landroid/content/Context;

    .line 155
    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->mCategoryItemList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->mCategoryItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 173
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, holder:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;
    if-nez p2, :cond_0

    .line 181
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0300af

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 183
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;

    .end local v0           #holder:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;
    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;-><init>()V

    .line 184
    .restart local v0       #holder:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;
    const v7, 0x7f080226

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 185
    const v7, 0x7f080229

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;->txt_category:Landroid/widget/TextView;

    .line 186
    const v7, 0x7f080228

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;->txt_tick:Landroid/widget/TextView;

    .line 188
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    :goto_0
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->mCategoryItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;

    .line 194
    .local v1, item:Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;
    iget-object v4, v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;->txt_category:Landroid/widget/TextView;

    .line 195
    .local v4, txt_category:Landroid/widget/TextView;
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v5, v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;->txt_tick:Landroid/widget/TextView;

    .line 198
    .local v5, txt_tick:Landroid/widget/TextView;
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    new-instance v2, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$1;

    invoke-direct {v2, p0, v5}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$1;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;Landroid/widget/TextView;)V

    .line 208
    .local v2, loadListener:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;
    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    move-result-object v7

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->getThumbUrl()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;->imageView:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v2, v10}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->loadImageFromServer(Ljava/lang/String;Landroid/widget/ImageView;Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;Z)V

    .line 210
    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->getName()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, selectedCategoryName:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->getCount()I

    move-result v6

    .line 212
    .local v6, wallpaperCount:I
    iget-object v7, v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;->imageView:Landroid/widget/ImageView;

    new-instance v8, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$2;

    invoke-direct {v8, p0, v3, v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter$2;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-object p2

    .line 190
    .end local v1           #item:Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;
    .end local v2           #loadListener:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;
    .end local v3           #selectedCategoryName:Ljava/lang/String;
    .end local v4           #txt_category:Landroid/widget/TextView;
    .end local v5           #txt_tick:Landroid/widget/TextView;
    .end local v6           #wallpaperCount:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;
    check-cast v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;

    .restart local v0       #holder:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;
    goto :goto_0
.end method

.method public setCategoryList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, categoryItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->mCategoryItemList:Ljava/util/ArrayList;

    .line 159
    return-void
.end method
