.class Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;
.super Ljava/lang/Object;
.source "ThemeLocalFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;
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
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 13
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
    .line 220
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mComponentType:I
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$800(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 221
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mIsSdcardUnmount:Z
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$900(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isSdcardAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    const-string v4, "theme_type >?"

    .line 224
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 228
    .local v5, selectionArgs:[Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    sget-object v3, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->LOCAL_THEME_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    .line 237
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    :goto_0
    return-object v6

    .line 232
    :cond_1
    new-instance v6, Landroid/support/v4/content/CursorLoader;

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->THEME_URI:Landroid/net/Uri;

    sget-object v9, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->LOCAL_THEME_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
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
    .line 243
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 244
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 216
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 249
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment$LocalThemeLoaderCallback;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->mThemeAdapter:Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;->access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeLocalFragment;)Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 250
    return-void
.end method
