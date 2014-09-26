.class Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "WallpaperLocalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperListAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 146
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->mContext:Landroid/content/Context;

    .line 147
    return-void
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 160
    const v3, 0x7f080226

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 161
    .local v1, imageView:Landroid/widget/ImageView;
    const v3, 0x7f080228

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 163
    .local v2, textView:Landroid/widget/TextView;
    const-string v3, "item_path"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, aItem_path:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;)Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->loadImageFromLocal(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;Z)V

    .line 167
    new-instance v3, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter$1;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 152
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 153
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0300af

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, convertView:Landroid/view/View;
    return-object v0
.end method
