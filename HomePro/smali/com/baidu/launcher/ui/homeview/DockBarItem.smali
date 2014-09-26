.class public Lcom/baidu/launcher/ui/homeview/DockBarItem;
.super Landroid/widget/ImageView;
.source "DockBarItem.java"

# interfaces
.implements Lcom/baidu/launcher/ui/folder/FolderHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/homeview/DockBarItem$FolderAction;,
        Lcom/baidu/launcher/ui/homeview/DockBarItem$DockBarItemLayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HIGHLIGHT_DURATION:I = 0x258

.field private static final TAG:Ljava/lang/String; = "DockBarItem"


# instance fields
.field public animating:Z

.field public animationX:I

.field public destinationX:I

.field public dstIndex:I

.field private mAction:Lcom/baidu/launcher/ui/common/DecorateAction;

.field protected mContext:Landroid/content/Context;

.field private mDrawHightlight:Z

.field private mEventAction:Lcom/baidu/launcher/ui/common/EventAction;

.field private final mIsLandscape:Z

.field private mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

.field public originalX:I

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 55
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->startTime:J

    .line 92
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->animating:Z

    .line 75
    const-string v1, "DockBarItem"

    const-string v2, "DockBarItem(Context context, AttributeSet attrs)"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/baidu/launcher/ui/common/EventAction;

    invoke-direct {v1, p1}, Lcom/baidu/launcher/ui/common/EventAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mEventAction:Lcom/baidu/launcher/ui/common/EventAction;

    .line 77
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mIsLandscape:Z

    .line 80
    new-instance v0, Lcom/baidu/launcher/ui/common/StatusAction;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/StatusAction;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mAction:Lcom/baidu/launcher/ui/common/DecorateAction;

    .line 81
    return-void
.end method

.method private convertDragData(Ljava/lang/Object;)Lcom/baidu/launcher/data/item/HomeItemInfo;
    .locals 7
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 330
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    instance-of v2, v2, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-eqz v2, :cond_2

    .line 332
    instance-of v2, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v2, :cond_1

    .line 334
    new-instance v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    check-cast p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p1
    invoke-direct {v1, p1}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 340
    .local v1, info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 341
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    .line 343
    .local v0, homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    check-cast v2, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-virtual {v2}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getID()J

    move-result-wide v2

    iget-object v5, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    check-cast v5, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-virtual {v5}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getSize()I

    move-result v5

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/data/HomeDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    .line 345
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    check-cast v2, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-virtual {v2, v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 349
    .end local v0           #homeDataManager:Lcom/baidu/launcher/data/HomeDataManager;
    .end local v1           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_0
    :goto_1
    return-object v1

    .line 335
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 336
    check-cast v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .restart local v1       #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    goto :goto_0

    .line 347
    .end local v1           #info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    instance-of v2, v2, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v2, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .locals 3
    .parameter "dragInfo"

    .prologue
    .line 297
    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 298
    .local v0, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    iget v1, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->itemType:I

    .line 304
    .local v1, itemType:I
    const/4 v2, 0x1

    return v2
.end method

.method public cancelFolderHighlight()V
    .locals 2

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mDrawHightlight:Z

    .line 282
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/content/Context;Z)V

    .line 283
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->invalidate()V

    .line 284
    return-void
.end method

.method public checkForRemoveFolder()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mDrawHightlight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 98
    move-object/from16 v0, p0

    iget v15, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mScrollX:I

    .line 99
    .local v15, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mScrollY:I

    move/from16 v16, v0

    .line 100
    .local v16, scrollY:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->startTime:J

    move-wide/from16 v23, v0

    sub-long v5, v21, v23

    .line 101
    .local v5, delta:J
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/baidu/launcher/utils/Utilities;->getFolderHighlight(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 102
    .local v12, mHighlightDrawable:Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mRight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mBottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    long-to-int v0, v5

    move/from16 v21, v0

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v4, v0, 0x258

    .line 104
    .local v4, alpha:I
    const/16 v21, 0xff

    move/from16 v0, v21

    if-le v4, v0, :cond_0

    .line 105
    const/16 v4, 0xff

    .line 106
    :cond_0
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 107
    or-int v21, v15, v16

    if-nez v21, :cond_4

    .line 108
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 114
    :goto_0
    const/16 v21, 0xff

    move/from16 v0, v21

    if-ge v4, v0, :cond_1

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->postInvalidate()V

    .line 118
    .end local v4           #alpha:I
    .end local v5           #delta:J
    .end local v12           #mHighlightDrawable:Landroid/graphics/drawable/Drawable;
    .end local v15           #scrollX:I
    .end local v16           #scrollY:I
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getPaddingTop()I

    move-result v17

    .line 120
    .local v17, topPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getWidth()I

    move-result v20

    .line 121
    .local v20, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getScrollX()I

    move-result v18

    .line 122
    .local v18, transitionX:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getScrollY()I

    move-result v19

    .line 123
    .local v19, transitionY:I
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v10

    .line 124
    .local v10, iconSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 125
    .local v14, res:Landroid/content/res/Resources;
    const/4 v11, 0x0

    .line 126
    .local v11, indicator:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 127
    .local v9, drawableW:I
    const/4 v8, 0x0

    .line 128
    .local v8, drawableH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->status:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 130
    const v21, 0x7f020014

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 131
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 132
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 133
    sub-int v21, v20, v10

    div-int/lit8 v21, v21, 0x2

    add-int v21, v21, v10

    sub-int v21, v21, v9

    add-int v18, v18, v21

    .line 134
    add-int v19, v19, v17

    .line 135
    if-eqz v11, :cond_2

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 137
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 138
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 139
    const/16 v21, 0xff

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 140
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 144
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mDrawHightlight:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 167
    :cond_3
    :goto_1
    return-void

    .line 110
    .end local v8           #drawableH:I
    .end local v9           #drawableW:I
    .end local v10           #iconSize:I
    .end local v11           #indicator:Landroid/graphics/drawable/Drawable;
    .end local v14           #res:Landroid/content/res/Resources;
    .end local v17           #topPadding:I
    .end local v18           #transitionX:I
    .end local v19           #transitionY:I
    .end local v20           #width:I
    .restart local v4       #alpha:I
    .restart local v5       #delta:J
    .restart local v12       #mHighlightDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v15       #scrollX:I
    .restart local v16       #scrollY:I
    :cond_4
    int-to-float v0, v15

    move/from16 v21, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    neg-int v0, v15

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    .line 146
    .end local v4           #alpha:I
    .end local v5           #delta:J
    .end local v12           #mHighlightDrawable:Landroid/graphics/drawable/Drawable;
    .end local v15           #scrollX:I
    .end local v16           #scrollY:I
    .restart local v8       #drawableH:I
    .restart local v9       #drawableW:I
    .restart local v10       #iconSize:I
    .restart local v11       #indicator:Landroid/graphics/drawable/Drawable;
    .restart local v14       #res:Landroid/content/res/Resources;
    .restart local v17       #topPadding:I
    .restart local v18       #transitionX:I
    .restart local v19       #transitionY:I
    .restart local v20       #width:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v13, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->eventCount:I

    .line 147
    .local v13, number:I
    if-lez v13, :cond_3

    .line 149
    const/4 v15, 0x0

    .line 150
    .restart local v15       #scrollX:I
    const/16 v16, 0x0

    .line 153
    .restart local v16       #scrollY:I
    sget v7, Lcom/baidu/launcher/app/LauncherApplication;->density:F

    .line 154
    .local v7, density:F
    float-to-double v0, v7

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff4

    cmpg-double v21, v21, v23

    if-gez v21, :cond_6

    .line 155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mScrollX:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getWidth()I

    move-result v22

    add-int v21, v21, v22

    add-int/lit8 v15, v21, 0x2

    .line 156
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mScrollY:I

    move/from16 v21, v0

    add-int/lit8 v16, v21, -0x1

    .line 164
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mEventAction:Lcom/baidu/launcher/ui/common/EventAction;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getPaddingLeft()I

    move-result v22

    sub-int v22, v15, v22

    add-int/lit8 v22, v22, 0xa

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getPaddingTop()I

    move-result v23

    div-int/lit8 v23, v23, 0x4

    sub-int v23, v16, v23

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/baidu/launcher/ui/common/EventAction;->draw(Landroid/graphics/Canvas;III)V

    goto/16 :goto_1

    .line 157
    :cond_6
    float-to-double v0, v7

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff4

    cmpl-double v21, v21, v23

    if-ltz v21, :cond_7

    float-to-double v0, v7

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ffc

    cmpg-double v21, v21, v23

    if-gez v21, :cond_7

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mScrollX:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getWidth()I

    move-result v22

    add-int v21, v21, v22

    add-int/lit8 v15, v21, 0x7

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mScrollY:I

    move/from16 v21, v0

    add-int/lit8 v16, v21, -0x5

    goto :goto_2

    .line 161
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mScrollX:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->getWidth()I

    move-result v22

    add-int v21, v21, v22

    add-int/lit8 v15, v21, 0x8

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mScrollY:I

    move/from16 v21, v0

    add-int/lit8 v16, v21, -0x4

    goto :goto_2
.end method

.method public drawFolderHighlight()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 253
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mDrawHightlight:Z

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->startTime:J

    .line 256
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/content/Context;Z)V

    .line 257
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->invalidate()V

    .line 258
    return-void
.end method

.method public getDrawFolderHighlight()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mDrawHightlight:Z

    return v0
.end method

.method public getShortcutInfo()Lcom/baidu/launcher/data/item/HomeItemInfo;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    return-object v0
.end method

.method public onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 310
    invoke-direct {p0, p7}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->convertDragData(Ljava/lang/Object;)Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-result-object v1

    .line 311
    .local v1, item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    if-nez v1, :cond_0

    .line 326
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/utils/EventNumberUtil;->getInstance()Lcom/baidu/launcher/utils/EventNumberUtil;

    move-result-object v0

    .line 316
    .local v0, enventNumberUtil:Lcom/baidu/launcher/utils/EventNumberUtil;
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/utils/EventNumberUtil;->checkEventInfo(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/utils/EventNumberUtil;->registerView(Landroid/view/View;)Z

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->updateFolderIcon()V

    .line 320
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->cancelFolderHighlight()V

    goto :goto_0
.end method

.method public removeOpenFolderCallbacks()V
    .locals 0

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->cancelFolderHighlight()V

    .line 294
    return-void
.end method

.method setImageBitmap(Landroid/content/Context;Z)V
    .locals 23
    .parameter "context"
    .parameter "useReflection"

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->isPreset:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    check-cast v19, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 173
    const v19, 0x7f020009

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageResource(I)V

    .line 241
    :goto_0
    return-void

    .line 177
    :cond_0
    sget v10, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    .line 179
    .local v10, iconScale:F
    const/high16 v19, 0x3f80

    cmpl-float v19, v10, v19

    if-eqz v19, :cond_1

    const/high16 v10, 0x3f80

    .line 181
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    check-cast v19, Lcom/baidu/launcher/data/item/HomeFolderInfo;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mDrawHightlight:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/utils/Utilities;->getFolderPicture(Landroid/content/Context;Lcom/baidu/launcher/data/item/IFolderInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    check-cast v19, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    check-cast v19, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;

    invoke-virtual/range {v19 .. v19}, Lcom/baidu/launcher/ui/common/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 184
    .local v5, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v10

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v10

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 186
    .local v16, scaleBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mIsLandscape:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    if-eqz p2, :cond_2

    sget-boolean v19, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    if-eqz v19, :cond_2

    .line 187
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/Utilities;->createReflectedBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 189
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/utils/Utilities;->createReflectedBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 194
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v16           #scaleBitmap:Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->status:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 198
    .local v13, mPm:Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    check-cast v19, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2240

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 203
    .local v14, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .local v6, d:Landroid/graphics/drawable/Drawable;
    move-object v4, v6

    .line 204
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 205
    .local v4, bd:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 206
    .local v12, mMatrix:Landroid/graphics/Matrix;
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v11, v19, v10

    .line 207
    .local v11, iconSize:F
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v11, v19

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v11, v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 208
    const/4 v9, 0x0

    .line 209
    .local v9, iconMap:Landroid/graphics/Bitmap;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.android.calendar"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 210
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getCurrentDay()I

    move-result v7

    .line 211
    .local v7, day:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ic_launcher_calendar_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 213
    .local v15, res:I
    if-lez v15, :cond_6

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 222
    .end local v7           #day:I
    .end local v15           #res:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 225
    .end local v4           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .end local v9           #iconMap:Landroid/graphics/Bitmap;
    .end local v11           #iconSize:F
    .end local v12           #mMatrix:Landroid/graphics/Matrix;
    .end local v13           #mPm:Landroid/content/pm/PackageManager;
    .end local v14           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v10

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 226
    .local v18, scaleWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v10

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 228
    .local v17, scaleHeight:I
    if-lez v18, :cond_5

    if-gtz v17, :cond_8

    .line 229
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    .line 234
    .restart local v16       #scaleBitmap:Landroid/graphics/Bitmap;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mIsLandscape:Z

    move/from16 v19, v0

    if-nez v19, :cond_9

    if-eqz p2, :cond_9

    sget-boolean v19, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->show_dockbar_bg:Z

    if-eqz v19, :cond_9

    .line 235
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/Utilities;->createReflectedBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 200
    .end local v16           #scaleBitmap:Landroid/graphics/Bitmap;
    .end local v17           #scaleHeight:I
    .end local v18           #scaleWidth:I
    .restart local v13       #mPm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v8

    .line 201
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    .line 217
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4       #bd:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6       #d:Landroid/graphics/drawable/Drawable;
    .restart local v7       #day:I
    .restart local v9       #iconMap:Landroid/graphics/Bitmap;
    .restart local v11       #iconSize:F
    .restart local v12       #mMatrix:Landroid/graphics/Matrix;
    .restart local v14       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v15       #res:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_1

    .line 220
    .end local v7           #day:I
    .end local v15           #res:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v6, v0, v1}, Lcom/baidu/launcher/utils/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_1

    .line 231
    .end local v4           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    .end local v9           #iconMap:Landroid/graphics/Bitmap;
    .end local v11           #iconSize:F
    .end local v12           #mMatrix:Landroid/graphics/Matrix;
    .end local v13           #mPm:Landroid/content/pm/PackageManager;
    .end local v14           #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v17       #scaleHeight:I
    .restart local v18       #scaleWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v16

    .restart local v16       #scaleBitmap:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 238
    :cond_9
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/utils/Utilities;->createReflectedBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public setShortcutInfo(Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 62
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mShortcutInfo:Lcom/baidu/launcher/data/item/HomeItemInfo;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setTag(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 267
    return-void
.end method

.method public updateFolderEventNumber(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, eventNumerInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/utils/EventNumberUtil$EventNumberInfo;>;"
    return-void
.end method

.method public updateFolderIcon()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBarItem;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setImageBitmap(Landroid/content/Context;Z)V

    .line 272
    return-void
.end method
