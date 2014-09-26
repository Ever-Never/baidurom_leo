.class public Lcom/baidu/launcher/ui/folder/UserFolder;
.super Lcom/baidu/launcher/ui/folder/Folder;
.source "UserFolder.java"

# interfaces
.implements Lcom/baidu/launcher/ui/dragdrop/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;
    }
.end annotation


# static fields
.field private static final FOLDER_MOVE_DURATION:J = 0xc8L


# instance fields
.field private mDragX:I

.field private mDragY:I

.field private mLastPosition:I

.field private mLayoutCheck:Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;

.field private shiftH:I

.field private shiftW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/folder/Folder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLastPosition:I

    .line 50
    return-void
.end method

.method private convertDragData(Ljava/lang/Object;)Lcom/baidu/launcher/data/item/BaseItemInfo;
    .locals 4
    .parameter "dragInfo"

    .prologue
    .line 107
    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v3}, Lcom/baidu/launcher/data/item/IFolderInfo;->getItemType()I

    move-result v2

    .line 108
    .local v2, itemType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, item:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    instance-of v3, p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_1

    .line 112
    new-instance v1, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    .end local v1           #item:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    check-cast p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p1
    invoke-direct {v1, p1}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;-><init>(Lcom/baidu/launcher/data/item/ListAppInfo;)V

    .line 118
    .restart local v1       #item:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->getIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 123
    .end local v1           #item:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_0
    :goto_1
    return-object v1

    .line 115
    .restart local v1       #item:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    .restart local p1
    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v1           #item:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :cond_2
    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 121
    check-cast p1, Lcom/baidu/launcher/data/item/ListAppInfo;

    .end local p1
    move-object v1, p1

    goto :goto_1

    .line 123
    .restart local p1
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 116
    .restart local v1       #item:Lcom/baidu/launcher/data/item/HomeShortcutInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static fromXml(Landroid/content/Context;)Lcom/baidu/launcher/ui/folder/UserFolder;
    .locals 4
    .parameter "context"

    .prologue
    .line 60
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ac

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/folder/UserFolder;

    .line 61
    .local v0, folder:Lcom/baidu/launcher/ui/folder/UserFolder;
    const v1, 0x7f020424

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/UserFolder;->setBackgroundResource(I)V

    .line 62
    return-object v0
.end method

.method private isShortcut(Ljava/lang/Object;)Z
    .locals 4
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x1

    .line 183
    move-object v0, p1

    check-cast v0, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 184
    .local v0, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    iget v1, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->itemType:I

    .line 185
    .local v1, itemType:I
    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private moveFolderView(Landroid/view/View;[I[ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 7
    .parameter "view"
    .parameter "orgPoints"
    .parameter "destPoints"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 409
    new-instance v0, Lcom/baidu/launcher/ui/folder/UserFolder$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/folder/UserFolder$2;-><init>(Lcom/baidu/launcher/ui/folder/UserFolder;)V

    .line 417
    .local v0, interpolator:Landroid/view/animation/Interpolator;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    aget v2, p3, v3

    aget v3, p2, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    aget v3, p3, v5

    aget v4, p2, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v1, v6, v2, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 419
    .local v1, moveAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 420
    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 421
    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 422
    invoke-virtual {v1, p4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 423
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 424
    return-void
.end method

.method private moveView(Landroid/view/View;[I[ILcom/baidu/launcher/ui/folder/FolderAdapter;Z)V
    .locals 1
    .parameter "view"
    .parameter "orgPoints"
    .parameter "destPoints"
    .parameter "adapter"
    .parameter "back"

    .prologue
    .line 390
    new-instance v0, Lcom/baidu/launcher/ui/folder/UserFolder$1;

    invoke-direct {v0, p0, p4}, Lcom/baidu/launcher/ui/folder/UserFolder$1;-><init>(Lcom/baidu/launcher/ui/folder/UserFolder;Lcom/baidu/launcher/ui/folder/FolderAdapter;)V

    .line 405
    .local v0, listener:Lcom/baidu/launcher/ui/animation/AnimationAdapter;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/baidu/launcher/ui/folder/UserFolder;->moveFolderView(Landroid/view/View;[I[ILandroid/view/animation/Animation$AnimationListener;)V

    .line 406
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)Z
    .locals 4
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x1

    .line 67
    move-object v0, p7

    check-cast v0, Lcom/baidu/launcher/data/item/BaseItemInfo;

    .line 68
    .local v0, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    iget v1, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->itemType:I

    .line 69
    .local v1, itemType:I
    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bind(Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/data/item/IFolderInfo;)V
    .locals 3
    .parameter "icon"
    .parameter "info"

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/folder/Folder;->bind(Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/data/item/IFolderInfo;)V

    .line 290
    invoke-interface {p2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 292
    .local v0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/BaseItemInfo;>;"
    new-instance v1, Lcom/baidu/launcher/ui/folder/FolderAdapter;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/baidu/launcher/ui/folder/FolderAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/folder/UserFolder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    .line 293
    return-void
.end method

.method public estimateDropLocation(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"
    .parameter "recycle"

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/UserFolder;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public layoutShortcuts()V
    .locals 19

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getCount()I

    move-result v2

    add-int/lit8 v13, v2, -0x2

    .line 313
    .local v13, maxPos:I
    if-gez v13, :cond_0

    .line 388
    :goto_0
    return-void

    .line 314
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/folder/FolderAdapter;

    .line 315
    .local v6, adapter:Lcom/baidu/launcher/ui/folder/FolderAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v10

    .line 316
    .local v10, firstVisiblePos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v12

    .line 317
    .local v12, lastVisiblePos:I
    if-le v10, v13, :cond_1

    .line 318
    move v10, v13

    .line 320
    :cond_1
    if-le v12, v13, :cond_2

    .line 321
    move v12, v13

    .line 323
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragY:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v7, v0}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result v14

    .line 324
    .local v14, position:I
    const/4 v2, -0x1

    if-ne v14, v2, :cond_3

    .line 325
    move v14, v12

    .line 327
    :cond_3
    if-le v14, v13, :cond_4

    .line 328
    move v14, v13

    .line 330
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLastPosition:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_5

    .line 331
    move-object/from16 v0, p0

    iput v14, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLastPosition:I

    .line 333
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLastPosition:I

    if-eq v14, v2, :cond_10

    if-ltz v14, :cond_10

    .line 334
    move-object/from16 v0, p0

    iget v15, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLastPosition:I

    .line 335
    .local v15, start:I
    move v9, v14

    .line 336
    .local v9, end:I
    if-ne v15, v9, :cond_6

    .line 337
    move v15, v12

    .line 339
    :cond_6
    if-ge v15, v9, :cond_a

    .line 340
    move v11, v15

    .local v11, i:I
    :goto_1
    if-ge v11, v9, :cond_e

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    add-int/lit8 v7, v11, 0x1

    sub-int/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 342
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_7

    .line 343
    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 344
    .local v4, oxy:[I
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 345
    const/4 v2, 0x2

    new-array v5, v2, [I

    .line 346
    .local v5, dxy:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    sub-int v7, v11, v10

    invoke-virtual {v2, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 347
    .local v8, dv:Landroid/view/View;
    if-nez v8, :cond_8

    .line 340
    .end local v4           #oxy:[I
    .end local v5           #dxy:[I
    .end local v8           #dv:Landroid/view/View;
    :cond_7
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 350
    .restart local v4       #oxy:[I
    .restart local v5       #dxy:[I
    .restart local v8       #dv:Landroid/view/View;
    :cond_8
    invoke-virtual {v8, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 351
    add-int/lit8 v2, v9, -0x1

    if-ne v11, v2, :cond_9

    .line 352
    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/launcher/ui/folder/UserFolder;->moveView(Landroid/view/View;[I[ILcom/baidu/launcher/ui/folder/FolderAdapter;Z)V

    goto :goto_2

    .line 354
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/baidu/launcher/ui/folder/UserFolder;->moveFolderView(Landroid/view/View;[I[ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_2

    .line 358
    .end local v3           #view:Landroid/view/View;
    .end local v4           #oxy:[I
    .end local v5           #dxy:[I
    .end local v8           #dv:Landroid/view/View;
    .end local v11           #i:I
    :cond_a
    if-le v15, v9, :cond_e

    .line 359
    move v11, v15

    .restart local v11       #i:I
    :goto_3
    if-le v11, v9, :cond_e

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    add-int/lit8 v7, v11, -0x1

    sub-int/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 361
    .restart local v3       #view:Landroid/view/View;
    if-eqz v3, :cond_b

    .line 362
    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 363
    .restart local v4       #oxy:[I
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 364
    const/4 v2, 0x2

    new-array v5, v2, [I

    .line 365
    .restart local v5       #dxy:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    sub-int v7, v11, v10

    invoke-virtual {v2, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 366
    .restart local v8       #dv:Landroid/view/View;
    if-nez v8, :cond_c

    .line 359
    .end local v4           #oxy:[I
    .end local v5           #dxy:[I
    .end local v8           #dv:Landroid/view/View;
    :cond_b
    :goto_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 369
    .restart local v4       #oxy:[I
    .restart local v5       #dxy:[I
    .restart local v8       #dv:Landroid/view/View;
    :cond_c
    invoke-virtual {v8, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 370
    add-int/lit8 v2, v9, 0x1

    if-ne v11, v2, :cond_d

    .line 371
    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/launcher/ui/folder/UserFolder;->moveView(Landroid/view/View;[I[ILcom/baidu/launcher/ui/folder/FolderAdapter;Z)V

    goto :goto_4

    .line 373
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/baidu/launcher/ui/folder/UserFolder;->moveFolderView(Landroid/view/View;[I[ILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_4

    .line 378
    .end local v3           #view:Landroid/view/View;
    .end local v4           #oxy:[I
    .end local v5           #dxy:[I
    .end local v8           #dv:Landroid/view/View;
    .end local v11           #i:I
    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->setNotifyOnChange(Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {v6, v2}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_f

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {v6, v2}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->remove(Ljava/lang/Object;)V

    .line 382
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {v6, v2, v14}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->insert(Lcom/baidu/launcher/data/item/BaseItemInfo;I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v7}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v2, Lcom/baidu/launcher/data/item/BaseItemInfo;->container:J

    .line 384
    move-object/from16 v0, p0

    iput v14, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLastPosition:I

    .line 386
    .end local v9           #end:I
    .end local v15           #start:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v2}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v16

    .line 387
    .local v16, viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-virtual/range {v16 .. v16}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragController()Lcom/baidu/launcher/ui/dragdrop/DragController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLastPosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/baidu/launcher/ui/dragdrop/DragController;->setOriginalView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 438
    invoke-super {p0}, Lcom/baidu/launcher/ui/folder/Folder;->notifyDataSetChanged()V

    .line 439
    return-void
.end method

.method public onDragEnter(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 148
    invoke-direct {p0, p7}, Lcom/baidu/launcher/ui/folder/UserFolder;->convertDragData(Ljava/lang/Object;)Lcom/baidu/launcher/data/item/BaseItemInfo;

    move-result-object v0

    .line 149
    .local v0, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->isDragging:Z

    .line 151
    iput-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    goto :goto_0
.end method

.method public onDragExit(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLayoutCheck:Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLayoutCheck:Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/folder/UserFolder;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 196
    :cond_0
    instance-of v0, p7, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->isDragging:Z

    .line 211
    :cond_2
    return-void

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-interface {v0, v1}, Lcom/baidu/launcher/data/item/IFolderInfo;->remove(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 203
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    instance-of v0, v0, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    const-wide/16 v1, -0x64

    iput-wide v1, v0, Lcom/baidu/launcher/data/item/BaseItemInfo;->container:J

    goto :goto_0
.end method

.method public onDragOver(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v6, 0x5

    .line 156
    invoke-direct {p0, p7}, Lcom/baidu/launcher/ui/folder/UserFolder;->isShortcut(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->shiftW:I

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->shiftH:I

    if-nez v4, :cond_3

    .line 161
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 163
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 164
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v4, v3}, Landroid/widget/GridView;->getHitRect(Landroid/graphics/Rect;)V

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->shiftW:I

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->shiftH:I

    .line 170
    .end local v0           #child:Landroid/view/View;
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_3
    sub-int v4, p2, p4

    iget v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->shiftW:I

    add-int v1, v4, v5

    .line 171
    .local v1, posX:I
    sub-int v4, p3, p5

    iget v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->shiftH:I

    add-int v2, v4, v5

    .line 172
    .local v2, posY:I
    iget v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragX:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v6, :cond_4

    iget v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragY:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 173
    :cond_4
    iput v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragX:I

    .line 174
    iput v2, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragY:I

    .line 175
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLayoutCheck:Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;

    if-nez v4, :cond_5

    .line 176
    new-instance v4, Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;-><init>(Lcom/baidu/launcher/ui/folder/UserFolder;)V

    iput-object v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLayoutCheck:Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;

    .line 178
    :cond_5
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLayoutCheck:Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/folder/UserFolder;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 179
    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLayoutCheck:Lcom/baidu/launcher/ui/folder/UserFolder$LayoutCheck;

    const-wide/16 v5, 0xc8

    invoke-virtual {p0, v4, v5, v6}, Lcom/baidu/launcher/ui/folder/UserFolder;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onDrop(Lcom/baidu/launcher/ui/dragdrop/DragSource;IIIILcom/baidu/launcher/ui/dragdrop/DragView;Ljava/lang/Object;)V
    .locals 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    .line 81
    .local v12, size:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 82
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v1, v9}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 81
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLastPosition:I

    .line 85
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/folder/UserFolder;->convertDragData(Ljava/lang/Object;)Lcom/baidu/launcher/data/item/BaseItemInfo;

    move-result-object v10

    .line 86
    .local v10, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    if-nez v10, :cond_1

    .line 104
    .end local v10           #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :goto_1
    return-void

    .line 87
    .restart local v10       #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/baidu/launcher/data/item/BaseItemInfo;->isDragging:Z

    .line 88
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/folder/FolderAdapter;

    .line 89
    .local v8, adapter:Lcom/baidu/launcher/ui/folder/FolderAdapter;
    invoke-virtual {v8, v10}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 90
    invoke-virtual {v8, v10}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->add(Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v1}, Lcom/baidu/launcher/data/item/IFolderInfo;->getItemType()I

    move-result v11

    .line 92
    .local v11, itemType:I
    const/4 v1, 0x2

    if-ne v11, v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v1

    move-object v2, v10

    check-cast v2, Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget-object v3, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v3}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v8}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getRealCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/launcher/data/HomeDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    .line 98
    .end local v10           #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    .end local v11           #itemType:I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/UserFolder;->saveShortcutPositions()V

    .line 99
    invoke-virtual {v8}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->setNotifyOnChange(Z)V

    .line 101
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v13

    .line 102
    .local v13, viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-virtual {v13}, Lcom/baidu/launcher/ui/logic/ViewManager;->refreshFolderIcon()V

    .line 103
    invoke-virtual {v13}, Lcom/baidu/launcher/ui/logic/ViewManager;->cancelFolderHighlight()V

    goto :goto_1

    .line 94
    .end local v13           #viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    .restart local v10       #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    .restart local v11       #itemType:I
    :cond_3
    const/16 v1, 0xb

    if-ne v11, v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v1

    check-cast v10, Lcom/baidu/launcher/data/item/ListItemInfo;

    .end local v10           #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v4}, Lcom/baidu/launcher/data/item/IFolderInfo;->getSize()I

    move-result v4

    invoke-virtual {v1, v10, v2, v3, v4}, Lcom/baidu/launcher/data/AppsDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V

    goto :goto_2
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 10
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v9, 0x0

    .line 215
    const/4 v5, -0x1

    iput v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLastPosition:I

    .line 216
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    iput-boolean v9, v5, Lcom/baidu/launcher/data/item/BaseItemInfo;->isDragging:Z

    .line 217
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/folder/FolderAdapter;

    .line 218
    .local v0, adapter:Lcom/baidu/launcher/ui/folder/FolderAdapter;
    if-eqz p2, :cond_9

    .line 219
    const-wide/16 v2, -0x1

    .line 220
    .local v2, id:J
    const/4 v4, 0x0

    .line 221
    .local v4, targetFolder:Lcom/baidu/launcher/ui/folder/UserFolder;
    instance-of v5, p1, Lcom/baidu/launcher/ui/folder/UserFolder;

    if-eqz v5, :cond_3

    move-object v4, p1

    .line 222
    check-cast v4, Lcom/baidu/launcher/ui/folder/UserFolder;

    .line 223
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/UserFolder;->getInfo()Lcom/baidu/launcher/data/item/IFolderInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v2

    .line 244
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v5}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-eqz v5, :cond_1

    .line 245
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->remove(Ljava/lang/Object;)V

    .line 246
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    iget-object v6, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-interface {v5, v6}, Lcom/baidu/launcher/data/item/IFolderInfo;->remove(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 264
    .end local v2           #id:J
    .end local v4           #targetFolder:Lcom/baidu/launcher/ui/folder/UserFolder;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/UserFolder;->saveShortcutPositions()V

    .line 265
    iput-boolean v9, v0, Lcom/baidu/launcher/ui/folder/FolderAdapter;->mIsDragging:Z

    .line 266
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->setNotifyOnChange(Z)V

    .line 267
    iput-boolean v9, v0, Lcom/baidu/launcher/ui/folder/FolderAdapter;->mIsDragging:Z

    .line 268
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 269
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    invoke-interface {v5}, Lcom/baidu/launcher/ui/folder/FolderHolder;->checkForRemoveFolder()V

    .line 271
    iput-boolean v9, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mIsDragging:Z

    .line 272
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v5}, Lcom/baidu/launcher/data/item/IFolderInfo;->isOpened()Z

    move-result v5

    if-nez v5, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/folder/UserFolder;->unbind()V

    .line 283
    :cond_2
    :goto_2
    return-void

    .line 224
    .restart local v2       #id:J
    .restart local v4       #targetFolder:Lcom/baidu/launcher/ui/folder/UserFolder;
    :cond_3
    instance-of v5, p1, Lcom/baidu/launcher/ui/folder/FolderLayer;

    if-eqz v5, :cond_4

    move-object v5, p1

    .line 225
    check-cast v5, Lcom/baidu/launcher/ui/folder/FolderLayer;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/folder/FolderLayer;->getFolder()Lcom/baidu/launcher/ui/folder/Folder;

    move-result-object v4

    .end local v4           #targetFolder:Lcom/baidu/launcher/ui/folder/UserFolder;
    check-cast v4, Lcom/baidu/launcher/ui/folder/UserFolder;

    .line 226
    .restart local v4       #targetFolder:Lcom/baidu/launcher/ui/folder/UserFolder;
    invoke-virtual {v4}, Lcom/baidu/launcher/ui/folder/UserFolder;->getInfo()Lcom/baidu/launcher/data/item/IFolderInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v2

    goto :goto_0

    .line 227
    :cond_4
    instance-of v5, p1, Lcom/baidu/launcher/ui/folder/FolderHolder;

    if-eqz v5, :cond_5

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/baidu/launcher/data/item/IFolderInfo;

    if-eqz v5, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 230
    .local v1, finfo:Lcom/baidu/launcher/data/item/IFolderInfo;
    invoke-interface {v1}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v2

    .line 231
    goto :goto_0

    .line 232
    .end local v1           #finfo:Lcom/baidu/launcher/data/item/IFolderInfo;
    :cond_5
    instance-of v5, p1, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    if-nez v5, :cond_6

    instance-of v5, p1, Lcom/baidu/launcher/ui/editview/ScreenSnapshot;

    if-eqz v5, :cond_8

    .line 233
    :cond_6
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    iget-wide v5, v5, Lcom/baidu/launcher/data/item/BaseItemInfo;->container:J

    const-wide/16 v7, -0x3e8

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 234
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v5}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v2

    .line 235
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->contain(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 236
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    iget-object v6, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v6}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/baidu/launcher/data/item/BaseItemInfo;->container:J

    .line 237
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->add(Ljava/lang/Object;)V

    .line 239
    :cond_7
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    invoke-interface {v5}, Lcom/baidu/launcher/ui/folder/FolderHolder;->updateFolderIcon()V

    goto/16 :goto_0

    .line 241
    :cond_8
    instance-of v5, p1, Lcom/baidu/launcher/ui/homeview/DockBar;

    if-eqz v5, :cond_0

    goto :goto_2

    .line 254
    .end local v2           #id:J
    .end local v4           #targetFolder:Lcom/baidu/launcher/ui/folder/UserFolder;
    :cond_9
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->contain(Lcom/baidu/launcher/data/item/BaseItemInfo;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 255
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    iget-object v6, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v6}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/baidu/launcher/data/item/BaseItemInfo;->container:J

    .line 256
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {v0, v5}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->add(Ljava/lang/Object;)V

    .line 262
    :cond_a
    iget-object v5, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mFolderIcon:Lcom/baidu/launcher/ui/folder/FolderHolder;

    invoke-interface {v5}, Lcom/baidu/launcher/ui/folder/FolderHolder;->updateFolderIcon()V

    goto/16 :goto_1
.end method

.method public onFlingToDelete(Lcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;IILandroid/graphics/PointF;)V
    .locals 0
    .parameter "source"
    .parameter "dragInfo"
    .parameter "x"
    .parameter "y"
    .parameter "vec"

    .prologue
    .line 445
    return-void
.end method

.method public saveShortcutPositions()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 127
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/ui/folder/FolderAdapter;

    .line 128
    .local v7, adapter:Lcom/baidu/launcher/ui/folder/FolderAdapter;
    const/4 v9, 0x0

    .line 129
    .local v9, item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getRealCount()I

    move-result v10

    .line 130
    .local v10, size:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v10, :cond_1

    .line 132
    :try_start_0
    invoke-virtual {v7, v5}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    check-cast v9, Lcom/baidu/launcher/data/item/BaseItemInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .restart local v9       #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    instance-of v0, v9, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/HomeDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/HomeDataManager;

    move-result-object v0

    move-object v1, v9

    check-cast v1, Lcom/baidu/launcher/data/item/HomeItemInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v2

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/data/HomeDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/HomeItemInfo;JIII)V

    .line 130
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 133
    .end local v9           #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :catch_0
    move-exception v8

    .line 143
    :cond_1
    invoke-virtual {v7}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 144
    return-void

    .line 138
    .restart local v9       #item:Lcom/baidu/launcher/data/item/BaseItemInfo;
    :cond_2
    instance-of v0, v9, Lcom/baidu/launcher/data/item/ListItemInfo;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/data/AppsDataManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/data/AppsDataManager;

    move-result-object v1

    move-object v0, v9

    check-cast v0, Lcom/baidu/launcher/data/item/ListItemInfo;

    iget-object v2, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mInfo:Lcom/baidu/launcher/data/item/IFolderInfo;

    invoke-interface {v2}, Lcom/baidu/launcher/data/item/IFolderInfo;->getID()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/baidu/launcher/data/AppsDataManager;->addOrMoveItemInDatabase(Lcom/baidu/launcher/data/item/ListItemInfo;JI)V

    goto :goto_1
.end method

.method protected startDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 428
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mContent:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/folder/FolderAdapter;

    .line 429
    .local v0, adapter:Lcom/baidu/launcher/ui/folder/FolderAdapter;
    iput-boolean v2, v0, Lcom/baidu/launcher/ui/folder/FolderAdapter;->mIsDragging:Z

    .line 431
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    iput-boolean v2, v1, Lcom/baidu/launcher/data/item/BaseItemInfo;->isDragging:Z

    .line 432
    iget-object v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mDragItem:Lcom/baidu/launcher/data/item/BaseItemInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/folder/UserFolder;->mLastPosition:I

    .line 433
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/folder/FolderAdapter;->notifyDataSetChanged()V

    .line 435
    return-void
.end method
