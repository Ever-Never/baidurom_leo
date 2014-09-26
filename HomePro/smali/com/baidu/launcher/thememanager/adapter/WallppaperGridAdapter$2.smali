.class Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$2;
.super Ljava/lang/Object;
.source "WallppaperGridAdapter.java"

# interfaces
.implements Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

.field final synthetic val$txt_tick:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$2;->this$0:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    iput-object p2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$2;->val$txt_tick:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinish()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$2;->val$txt_tick:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    return-void
.end method
