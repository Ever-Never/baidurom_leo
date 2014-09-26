.class Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$LocalThemeLoaderCallback;
.super Ljava/lang/Object;
.source "WallpaperLocalFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalThemeLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$LocalThemeLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$LocalThemeLoaderCallback;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 120
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$LocalThemeLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->WALLPAPER_URI:Landroid/net/Uri;

    sget-object v3, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->LOCAL_WALLPAPER_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$LocalThemeLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mWallpaperAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->access$200(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;)Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 128
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$LocalThemeLoaderCallback;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$LocalThemeLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->mWallpaperAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;->access$200(Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment;)Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperLocalFragment$WallpaperListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 133
    return-void
.end method
