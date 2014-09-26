.class public Lcom/baidu/launcher/ui/editview/EditView;
.super Landroid/widget/FrameLayout;
.source "EditView.java"

# interfaces
.implements Lcom/baidu/launcher/ui/logic/IBaseView;
.implements Lcom/baidu/launcher/ui/dragdrop/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;,
        Lcom/baidu/launcher/ui/editview/EditView$TabClick;
    }
.end annotation


# static fields
.field public static final TYPE_APP:I = 0x0

.field public static final TYPE_FOLDER:I = 0x3

.field public static final TYPE_SHORTCUT:I = 0x2

.field public static final TYPE_WIDGET:I = 0x1


# instance fields
.field private createFolderView:Landroid/view/View;

.field private currentView:Landroid/view/View;

.field private edit_applist_left:Landroid/widget/ImageView;

.field private edit_applist_right:Landroid/widget/ImageView;

.field private launcher_edit_top_pane:Landroid/widget/LinearLayout;

.field private mAppListview:Lcom/baidu/launcher/ui/editview/EditAppsListView;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

.field private mIsAnimating:Z

.field private mOpenAnim:Landroid/animation/ObjectAnimator;

.field private mThumbnailLastDropPage:I

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private pendingAddItem:Z

.field private screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

.field private shortcutDesLoc:[I

.field private shortcutView:Landroid/view/View;

.field private shortcutscale:F

.field private tabApp:Landroid/view/View;

.field private tabMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tabShortcut:Landroid/view/View;

.field private tabWidget:Landroid/view/View;

.field private thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z

    .line 79
    iput v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mThumbnailLastDropPage:I

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;

    .line 482
    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutView:Landroid/view/View;

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutscale:F

    .line 484
    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z

    .line 79
    iput v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mThumbnailLastDropPage:I

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;

    .line 482
    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutView:Landroid/view/View;

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutscale:F

    .line 484
    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z

    .line 79
    iput v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mThumbnailLastDropPage:I

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;

    .line 482
    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutView:Landroid/view/View;

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutscale:F

    .line 484
    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/editview/EditView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/EditView;->doShowAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/editview/EditView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mThumbnailLastDropPage:I

    return v0
.end method

.method static synthetic access$1002(Lcom/baidu/launcher/ui/editview/EditView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/baidu/launcher/ui/editview/EditView;->mThumbnailLastDropPage:I

    return p1
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/ui/editview/EditView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/baidu/launcher/ui/editview/EditView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/ui/editview/EditView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I

    return-object v0
.end method

.method static synthetic access$1302(Lcom/baidu/launcher/ui/editview/EditView;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I

    return-object p1
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/ui/editview/EditView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/editview/EditView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/EditView;->loadAndShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/editview/EditAppsListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mAppListview:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/editview/EditView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabApp:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/editview/EditView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/editview/EditView;->setCurrentTab(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/editview/EditView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->currentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/editview/EditView;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/editview/EditView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z

    return v0
.end method

.method static synthetic access$802(Lcom/baidu/launcher/ui/editview/EditView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z

    return p1
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/editview/EditView;)Lcom/baidu/launcher/ui/editview/ScreenSnapshot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    return-object v0
.end method

.method private checkForSystemWidget(Ljava/lang/Object;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 290
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v3, :cond_0

    check-cast p1, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .end local p1
    iget v3, p1, Lcom/baidu/launcher/data/item/ListWidgetInfo;->widgetID:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 292
    new-instance v1, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v1, v3, v4}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 294
    .local v1, host:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 296
    .local v0, appWidgetId:I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_PICK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v3, "appWidgetId"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditView;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 302
    const/4 v3, 0x1

    .line 304
    .end local v0           #appWidgetId:I
    .end local v1           #host:Lcom/baidu/launcher/ui/widget/system/LauncherAppWidgetHost;
    .end local v2           #pickIntent:Landroid/content/Intent;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private clearOpenAnim()V
    .locals 1

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditView;->clearAnimation()V

    .line 248
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mOpenAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mOpenAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mOpenAnim:Landroid/animation/ObjectAnimator;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mAppListview:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->clearOpenAnim()V

    .line 253
    return-void
.end method

.method private doShowAnimation()V
    .locals 19

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/EditView;->clearOpenAnim()V

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v15

    .line 166
    .local v15, thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
    invoke-virtual {v15}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getThumbnailWidth()I

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    if-nez v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->getCurrentScreen()I

    move-result v9

    .line 168
    .local v9, index:I
    invoke-virtual {v15}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getThumbnailWidth()I

    move-result v18

    .line 169
    .local v18, thumbnailW:I
    invoke-virtual {v15}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getThumbnailHeight()I

    move-result v16

    .line 170
    .local v16, thumbnailH:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/EditView;->getMeasuredWidth()I

    move-result v11

    .line 171
    .local v11, measuredW:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/EditView;->getMeasuredHeight()I

    move-result v10

    .line 173
    .local v10, measuredH:I
    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v4, v11

    div-float/2addr v3, v4

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v10

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 174
    .local v17, thumbnailScale:F
    const/high16 v3, 0x3f80

    div-float v2, v3, v17

    .line 175
    .local v2, scale:F
    const/4 v3, 0x2

    new-array v12, v3, [F

    .line 176
    .local v12, pivot:[F
    if-nez v9, :cond_3

    .line 177
    const/4 v3, 0x0

    const/high16 v4, 0x4180

    move/from16 v0, v18

    int-to-float v5, v0

    invoke-virtual {v15}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getThumbnailScale()F

    move-result v6

    int-to-float v7, v11

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v12, v3

    .line 183
    :goto_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v4, v10

    int-to-float v4, v4

    aput v4, v12, v3

    .line 184
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/EditView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/bulletin/ui/Utilities;->getWidthPixels(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/editview/EditView;->setPivotX(F)V

    .line 186
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/editview/EditView;->setPivotY(F)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/EditView;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/baidu/launcher/ui/editview/EditView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 190
    :cond_2
    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 192
    .local v8, alphaIn:Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 194
    .local v13, scaleXIn:Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 196
    .local v14, scaleYIn:Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const/4 v4, 0x1

    aput-object v14, v3, v4

    const/4 v4, 0x2

    aput-object v8, v3, v4

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/baidu/launcher/ui/editview/EditView;->mOpenAnim:Landroid/animation/ObjectAnimator;

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/EditView;->mOpenAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/EditView;->mOpenAnim:Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3f80

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/EditView;->mOpenAnim:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/baidu/launcher/ui/editview/EditView$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/baidu/launcher/ui/editview/EditView$2;-><init>(Lcom/baidu/launcher/ui/editview/EditView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/editview/EditView;->mOpenAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    .line 178
    .end local v8           #alphaIn:Landroid/animation/PropertyValuesHolder;
    .end local v13           #scaleXIn:Landroid/animation/PropertyValuesHolder;
    .end local v14           #scaleYIn:Landroid/animation/PropertyValuesHolder;
    :cond_3
    const/16 v3, 0x9

    if-ne v9, v3, :cond_4

    .line 179
    const/4 v3, 0x0

    add-int/lit8 v4, v11, -0x10

    int-to-float v4, v4

    move/from16 v0, v18

    int-to-float v5, v0

    invoke-virtual {v15}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getThumbnailScale()F

    move-result v6

    int-to-float v7, v11

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v12, v3

    goto/16 :goto_1

    .line 181
    :cond_4
    const/4 v3, 0x0

    int-to-float v4, v11

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    aput v4, v12, v3

    goto/16 :goto_1

    .line 209
    :cond_5
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    aget v6, v12, v4

    const/4 v4, 0x1

    aget v4, v12, v4

    neg-float v7, v4

    move v4, v2

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 211
    .local v1, previewAnim:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 212
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x4000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 213
    new-instance v3, Lcom/baidu/launcher/ui/editview/EditView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/baidu/launcher/ui/editview/EditView$3;-><init>(Lcom/baidu/launcher/ui/editview/EditView;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 219
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 190
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private loadAndShow()V
    .locals 4

    .prologue
    .line 223
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 224
    .local v0, delay:I
    :goto_0
    new-instance v1, Lcom/baidu/launcher/ui/editview/EditView$4;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/editview/EditView$4;-><init>(Lcom/baidu/launcher/ui/editview/EditView;)V

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/baidu/launcher/ui/editview/EditView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    return-void

    .line 223
    .end local v0           #delay:I
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private setCurrentTab(Landroid/view/View;Z)V
    .locals 6
    .parameter "v"
    .parameter "refresh"

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0xb8

    .line 367
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView;->currentView:Landroid/view/View;

    .line 369
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 370
    .local v2, view:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, v2

    .line 371
    check-cast v1, Landroid/widget/TextView;

    .line 372
    .local v1, t:Landroid/widget/TextView;
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 376
    .end local v1           #t:Landroid/widget/TextView;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditView;->currentView:Landroid/view/View;

    const v4, 0x7f020321

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 378
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->currentView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 379
    .restart local v1       #t:Landroid/widget/TextView;
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    if-eqz p2, :cond_1

    .line 381
    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/EditView;->mAppListview:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditView;->currentView:Landroid/view/View;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->showPages(IZ)V

    .line 383
    :cond_1
    return-void
.end method


# virtual methods
.method public addShortcutResult(I)V
    .locals 7
    .parameter "requestCode"

    .prologue
    const/4 v6, 0x0

    .line 498
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 499
    iput-boolean v6, p0, Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    new-instance v3, Lcom/baidu/launcher/ui/editview/EditView$5;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/ui/editview/EditView$5;-><init>(Lcom/baidu/launcher/ui/editview/EditView;)V

    .line 514
    .local v3, dropRunnable:Ljava/lang/Runnable;
    iget v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mThumbnailLastDropPage:I

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getCurrentDropPage()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 515
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c004c

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v4, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    aput v4, v2, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    aput v5, v2, v4

    iget v4, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutscale:F

    iget-boolean v5, p0, Lcom/baidu/launcher/ui/editview/EditView;->mIsAnimating:Z

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;[ILjava/lang/Runnable;FZ)V

    goto :goto_0
.end method

.method public animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILjava/lang/Runnable;F)V
    .locals 11
    .parameter "fromoView"
    .parameter "animView"
    .parameter "desLoc"
    .parameter "onFinishAnimationRunnable"
    .parameter "scale"

    .prologue
    .line 606
    if-nez p1, :cond_0

    .line 613
    :goto_0
    return-void

    .line 607
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 608
    .local v2, from:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    .line 609
    .local v0, dragLayer:Lcom/baidu/launcher/ui/dragdrop/DragLayer;
    invoke-virtual {v0, p1, v2}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 610
    new-instance v3, Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget v1, p3, v1

    const/4 v4, 0x1

    aget v4, p3, v4

    const/4 v5, 0x0

    aget v5, p3, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aget v6, p3, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 611
    .local v3, to:Landroid/graphics/Rect;
    const/high16 v4, 0x3f80

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p2

    move/from16 v5, p5

    move-object v9, p4

    invoke-virtual/range {v0 .. v10}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method public buildUpAlertDialog(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 619
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->mContext:Landroid/content/Context;

    const v2, 0x1030133

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c006f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/baidu/launcher/ui/editview/EditView$10;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/editview/EditView$10;-><init>(Lcom/baidu/launcher/ui/editview/EditView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/baidu/launcher/ui/editview/EditView$9;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/ui/editview/EditView$9;-><init>(Lcom/baidu/launcher/ui/editview/EditView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/baidu/launcher/ui/editview/EditView$8;

    invoke-direct {v2, p0, p1}, Lcom/baidu/launcher/ui/editview/EditView$8;-><init>(Lcom/baidu/launcher/ui/editview/EditView;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 651
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020424

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 653
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 654
    return-void
.end method

.method public cancleAddShortcut()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z

    .line 557
    return-void
.end method

.method public changeDropThumbnial(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->changeDropThumbnail(I)V

    .line 565
    return-void
.end method

.method public completeAddShortcut(Landroid/content/Intent;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 526
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/editview/EditView;->findDestopPositionForShortcut()F

    move-result v1

    .line 528
    .local v1, scale:F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 529
    move-object v0, p1

    .line 530
    .local v0, intent:Landroid/content/Intent;
    new-instance v2, Lcom/baidu/launcher/ui/editview/EditView$6;

    invoke-direct {v2, p0, v0}, Lcom/baidu/launcher/ui/editview/EditView$6;-><init>(Lcom/baidu/launcher/ui/editview/EditView;Landroid/content/Intent;)V

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/baidu/launcher/ui/editview/EditView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 553
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->mContext:Landroid/content/Context;

    const v3, 0x7f0c004e

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 550
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getEditView()Lcom/baidu/launcher/ui/editview/EditView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/baidu/launcher/ui/editview/EditView;->addShortcutResult(I)V

    .line 551
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/editview/EditView;->pendingAddItem:Z

    goto :goto_0
.end method

.method public completeFillFolder(Lcom/baidu/launcher/data/item/IFolderInfo;Landroid/content/Intent;)V
    .locals 11
    .parameter "folder"
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    .line 574
    const/4 v0, 0x5

    new-array v6, v0, [I

    .line 575
    .local v6, desLoc:[I
    const v1, 0x7f030057

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditView;->getCurrentPage()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/baidu/launcher/ui/homeview/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v3, v0, p1}, Lcom/baidu/launcher/ui/folder/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/launcher/data/item/IFolderInfo;)Lcom/baidu/launcher/ui/folder/FolderIcon;

    move-result-object v2

    .line 577
    .local v2, folderIcon:Lcom/baidu/launcher/ui/folder/FolderIcon;
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v8

    .line 578
    .local v8, thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
    invoke-virtual {v8}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getCurrentDropPage()I

    move-result v7

    .line 579
    .local v7, dropPage:I
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v6, v7}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getDestopPosition(Landroid/view/View;Ljava/lang/Object;[II)F

    move-result v5

    .line 580
    .local v5, scale:F
    const/4 v0, 0x0

    cmpg-float v0, v5, v0

    if-gez v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c004e

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 604
    :goto_0
    return-void

    .line 583
    :cond_0
    invoke-virtual {v8}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getCurrentDropPage()I

    move-result v0

    if-eq v7, v0, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c004c

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 586
    :cond_1
    new-instance v4, Lcom/baidu/launcher/ui/editview/EditView$7;

    invoke-direct {v4, p0, p1, v6}, Lcom/baidu/launcher/ui/editview/EditView$7;-><init>(Lcom/baidu/launcher/ui/editview/EditView;Lcom/baidu/launcher/data/item/IFolderInfo;[I)V

    .line 597
    .local v4, dropRunnable:Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->createFolderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->createFolderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditView;->createFolderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v9, p0, Lcom/baidu/launcher/ui/editview/EditView;->createFolderView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v2, v0, v1, v3, v9}, Lcom/baidu/launcher/ui/folder/FolderIcon;->layout(IIII)V

    .line 599
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->createFolderView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v3, v0, [I

    const/4 v0, 0x3

    aget v0, v6, v0

    aput v0, v3, v10

    const/4 v0, 0x1

    const/4 v9, 0x4

    aget v9, v6, v9

    aput v9, v3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/editview/EditView;->animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILjava/lang/Runnable;F)V

    goto :goto_0
.end method

.method public findDestopPositionForShortcut()F
    .locals 6

    .prologue
    .line 487
    const/4 v2, 0x5

    new-array v0, v2, [I

    .line 488
    .local v0, desLoc:[I
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v1

    .line 489
    .local v1, thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getCurrentDropPage()I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->mThumbnailLastDropPage:I

    .line 490
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutView:Landroid/view/View;

    const/4 v4, 0x0

    iget v5, p0, Lcom/baidu/launcher/ui/editview/EditView;->mThumbnailLastDropPage:I

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getDestopPosition(Landroid/view/View;Ljava/lang/Object;[II)F

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutscale:F

    .line 491
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutDesLoc:[I

    .line 493
    iget v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->shortcutscale:F

    return v2
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getCurrentDropPage()I

    move-result v0

    return v0
.end method

.method public getEdit_applist_left()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->edit_applist_left:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getEdit_applist_right()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->edit_applist_right:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 257
    const v0, 0x7f080109

    return v0
.end method

.method public getScreenSnapshot()Lcom/baidu/launcher/ui/editview/ScreenSnapshot;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    return-object v0
.end method

.method public hide(ZLjava/lang/Object;)V
    .locals 1
    .parameter "animate"
    .parameter "extra"

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/EditView;->clearOpenAnim()V

    .line 238
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->releaseScreenBackgroundBitmap()V

    .line 239
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/EditView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mAppListview:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->clearAllPages()V

    .line 241
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mAppListview:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->clearDatas()V

    .line 242
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/WidgetPreviewCache;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/WidgetPreviewCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/data/WidgetPreviewCache;->clearPreviews()V

    .line 243
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->exitFullscreen()V

    .line 244
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mIsAnimating:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 271
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v1

    .line 272
    .local v1, thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getCurrentDropPage()I

    move-result v0

    .line 273
    .local v0, index:I
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    .line 274
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v0, v2, -0x1

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    const v3, 0x7f08013a

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getAnimData(I)Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    .line 277
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 4
    .parameter "target"
    .parameter "success"

    .prologue
    .line 329
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    .line 330
    .local v0, dragController:Lcom/baidu/launcher/ui/dragdrop/DragController;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getOriginalView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getOriginalView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/baidu/launcher/ui/editview/EditView;->showDraggedView(Landroid/view/View;Z)V

    .line 334
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->getDragInfo()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->updateStatus(Ljava/lang/Object;Z)V

    .line 335
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 111
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 112
    const v1, 0x7f08010b

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->edit_applist_left:Landroid/widget/ImageView;

    .line 113
    const v1, 0x7f08010c

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->edit_applist_right:Landroid/widget/ImageView;

    .line 114
    const v1, 0x7f08010a

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/editview/EditAppsListView;

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->mAppListview:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    .line 118
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->mAppListview:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    new-instance v2, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/baidu/launcher/ui/editview/EditView$EditAppsListViewListener;-><init>(Lcom/baidu/launcher/ui/editview/EditView;Lcom/baidu/launcher/ui/editview/EditView$1;)V

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setListener(Lcom/baidu/launcher/ui/editview/EditAppsListView$PageChangeListener;)V

    .line 121
    const v1, 0x7f080111

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    .line 122
    const v1, 0x7f08010d

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->launcher_edit_top_pane:Landroid/widget/LinearLayout;

    .line 123
    const v1, 0x7f08010e

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabApp:Landroid/view/View;

    .line 124
    const v1, 0x7f08010f

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabWidget:Landroid/view/View;

    .line 125
    const v1, 0x7f080110

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabShortcut:Landroid/view/View;

    .line 128
    const v1, 0x7f080118

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    .line 129
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->mIndicator:Lcom/baidu/launcher/ui/editview/EditViewIndicator;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->setIndicator(Lcom/baidu/launcher/ui/editview/EditViewIndicator;)V

    .line 130
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 131
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabApp:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabWidget:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabShortcut:Landroid/view/View;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/baidu/launcher/ui/editview/EditView$TabClick;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/editview/EditView$TabClick;-><init>(Lcom/baidu/launcher/ui/editview/EditView;)V

    .line 137
    .local v0, tabClick:Lcom/baidu/launcher/ui/editview/EditView$TabClick;
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabApp:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabWidget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->tabShortcut:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onMenu(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1
    .parameter "listener"

    .prologue
    .line 570
    const/4 v0, 0x0

    return-object v0
.end method

.method public onNewIntent(Z)V
    .locals 5
    .parameter "alreadyOnHome"

    .prologue
    .line 281
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v1

    .line 282
    .local v1, thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getCurrentDropPage()I

    move-result v0

    .line 283
    .local v0, index:I
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    .line 284
    sget v2, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    add-int/lit8 v0, v2, -0x1

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    const v3, 0x7f08013a

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getAnimData(I)Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    .line 287
    return-void
.end method

.method public onWorkspaceChanged(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->workspaceChanged(I)V

    .line 354
    return-void
.end method

.method public setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 2
    .parameter "viewManager"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 106
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->addDropTarget(Lcom/baidu/launcher/ui/dragdrop/DropTarget;)V

    .line 107
    return-void
.end method

.method public show(ZLjava/lang/Object;)V
    .locals 3
    .parameter "animate"
    .parameter "extra"

    .prologue
    .line 145
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->enterFullscreen()V

    .line 146
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->setVisibility(I)V

    .line 147
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->updateThumbnail(I)V

    .line 148
    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditView;->screenSnapshotView:Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;->getThumbnailGroup()Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    move-result-object v0

    .line 149
    .local v0, thumbnailGroup:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->onShow()V

    .line 150
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->getThumbnailWidth()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/baidu/launcher/ui/editview/EditView$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/editview/EditView$1;-><init>(Lcom/baidu/launcher/ui/editview/EditView;)V

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditView;->post(Ljava/lang/Runnable;)Z

    .line 160
    :goto_0
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->onShow()V

    .line 161
    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/editview/EditView;->doShowAnimation()V

    goto :goto_0
.end method

.method public showDraggedView(Landroid/view/View;Z)V
    .locals 11
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v6, 0x3f00

    const v1, 0x3e99999a

    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 309
    if-eqz p1, :cond_0

    .line 310
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 311
    if-eqz p2, :cond_1

    .line 312
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 313
    .local v10, animSet:Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 314
    .local v9, animAlpha:Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 317
    .local v0, animScale:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 318
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 319
    const-wide/16 v1, 0xc8

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 320
    invoke-virtual {p1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 325
    .end local v0           #animScale:Landroid/view/animation/ScaleAnimation;
    .end local v9           #animAlpha:Landroid/view/animation/AlphaAnimation;
    .end local v10           #animSet:Landroid/view/animation/AnimationSet;
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public showOnDropFailureAnimation(Ljava/lang/Object;[I)Z
    .locals 1
    .parameter "mDragInfo"
    .parameter "mOriginatorXY"

    .prologue
    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public updateCalendarIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView;->mAppListview:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->updateCalendarIcon(Landroid/graphics/Bitmap;)V

    .line 617
    return-void
.end method
