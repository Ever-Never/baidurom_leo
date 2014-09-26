.class Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$DummyTabFactory;
.super Ljava/lang/Object;
.source "BaiduWallpaperActivity.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$1:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$DummyTabFactory;->this$1:Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$DummyTabFactory;->mContext:Landroid/content/Context;

    .line 190
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 194
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduWallpaperActivity$TabsAdapter$DummyTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 196
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 197
    return-object v0
.end method
