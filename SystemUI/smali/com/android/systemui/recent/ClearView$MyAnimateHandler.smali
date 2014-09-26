.class Lcom/android/systemui/recent/ClearView$MyAnimateHandler;
.super Landroid/os/Handler;
.source "ClearView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/ClearView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAnimateHandler"
.end annotation


# static fields
.field public static final DISMISS:I = 0x1

.field public static final FINISH:I = 0x4

.field public static final GET_ALL_TASK_VIEW:I = 0x5

.field public static final PERFORM_ANIMATE_ADD:I = 0x3

.field public static final PERFORM_ANIMATE_DEC:I = 0x2

.field public static final UPDATE_MEMORY_SIZE:I


# instance fields
.field private final mClearView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/recent/ClearView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/ClearView;)V
    .locals 1
    .parameter "clearView"

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 203
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->mClearView:Ljava/lang/ref/WeakReference;

    .line 204
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 33
    .parameter "msg"

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->mClearView:Ljava/lang/ref/WeakReference;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/ClearView;

    .line 208
    .local v6, clearView:Lcom/android/systemui/recent/ClearView;
    if-nez v6, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    goto :goto_0

    .line 248
    :pswitch_0
    #calls: Lcom/android/systemui/recent/ClearView;->updateMemoryInfo()V
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$900(Lcom/android/systemui/recent/ClearView;)V

    .line 249
    #getter for: Lcom/android/systemui/recent/ClearView;->mAnimateHandler:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1000(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    move-result-object v26

    const/16 v27, 0x0

    const-wide/16 v28, 0x12c

    invoke-virtual/range {v26 .. v29}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 211
    :pswitch_1
    #getter for: Lcom/android/systemui/recent/ClearView;->mTaskViews:[Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$500(Lcom/android/systemui/recent/ClearView;)[Landroid/view/View;

    move-result-object v26

    if-nez v26, :cond_0

    .line 212
    #getter for: Lcom/android/systemui/recent/ClearView;->mTaskViewParent:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$600(Lcom/android/systemui/recent/ClearView;)Landroid/view/ViewGroup;

    move-result-object v25

    .line 213
    .local v25, viewParent:Landroid/view/ViewGroup;
    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 214
    .local v7, count:I
    #setter for: Lcom/android/systemui/recent/ClearView;->mTaskViewCount:I
    invoke-static {v6, v7}, Lcom/android/systemui/recent/ClearView;->access$702(Lcom/android/systemui/recent/ClearView;I)I

    .line 215
    if-lez v7, :cond_2

    .line 216
    new-array v0, v7, [Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    #setter for: Lcom/android/systemui/recent/ClearView;->mTaskViews:[Landroid/view/View;
    invoke-static {v6, v0}, Lcom/android/systemui/recent/ClearView;->access$502(Lcom/android/systemui/recent/ClearView;[Landroid/view/View;)[Landroid/view/View;

    .line 217
    add-int/lit8 v8, v7, -0x1

    .local v8, i:I
    :goto_1
    if-ltz v8, :cond_2

    .line 218
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 219
    .local v5, childView:Landroid/view/View;
    #getter for: Lcom/android/systemui/recent/ClearView;->mTaskViews:[Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$500(Lcom/android/systemui/recent/ClearView;)[Landroid/view/View;

    move-result-object v26

    add-int/lit8 v27, v7, -0x1

    sub-int v27, v27, v8

    aput-object v5, v26, v27

    .line 217
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 222
    .end local v5           #childView:Landroid/view/View;
    .end local v8           #i:I
    :cond_2
    const/4 v8, 0x0

    .line 223
    .restart local v8       #i:I
    #getter for: Lcom/android/systemui/recent/ClearView;->mTaskViews:[Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$500(Lcom/android/systemui/recent/ClearView;)[Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 224
    #getter for: Lcom/android/systemui/recent/ClearView;->mTaskViews:[Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$500(Lcom/android/systemui/recent/ClearView;)[Landroid/view/View;

    move-result-object v4

    .local v4, arr$:[Landroid/view/View;
    array-length v12, v4

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v12, :cond_0

    aget-object v21, v4, v9

    .line 225
    .local v21, tmpView:Landroid/view/View;
    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsHorizontalScrollView;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$000(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isAppClearLocked(Landroid/view/View;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 226
    move-object/from16 v24, v21

    .line 227
    .local v24, view:Landroid/view/View;
    add-int/lit8 v10, v8, 0x1

    .line 228
    .local v10, index:I
    new-instance v26, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v6, v2, v10}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler$1;-><init>(Lcom/android/systemui/recent/ClearView$MyAnimateHandler;Lcom/android/systemui/recent/ClearView;Landroid/view/View;I)V

    mul-int/lit8 v27, v8, 0x64

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    add-int/lit8 v8, v8, 0x1

    .line 224
    .end local v10           #index:I
    .end local v24           #view:Landroid/view/View;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 253
    .end local v4           #arr$:[Landroid/view/View;
    .end local v7           #count:I
    .end local v8           #i:I
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v21           #tmpView:Landroid/view/View;
    .end local v25           #viewParent:Landroid/view/ViewGroup;
    :pswitch_2
    #getter for: Lcom/android/systemui/recent/ClearView;->mTaskViews:[Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$500(Lcom/android/systemui/recent/ClearView;)[Landroid/view/View;

    move-result-object v26

    if-eqz v26, :cond_6

    .line 254
    #getter for: Lcom/android/systemui/recent/ClearView;->mTaskViews:[Landroid/view/View;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$500(Lcom/android/systemui/recent/ClearView;)[Landroid/view/View;

    move-result-object v4

    .restart local v4       #arr$:[Landroid/view/View;
    array-length v12, v4

    .restart local v12       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_3
    if-ge v9, v12, :cond_5

    aget-object v21, v4, v9

    .line 255
    .restart local v21       #tmpView:Landroid/view/View;
    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsHorizontalScrollView;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$000(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->isAppClearLocked(Landroid/view/View;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 256
    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentsPanelView:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$100(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentsPanelView;->handleSwipe(Landroid/view/View;Z)V

    .line 254
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 259
    .end local v21           #tmpView:Landroid/view/View;
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    #setter for: Lcom/android/systemui/recent/ClearView;->mTaskViewCount:I
    invoke-static {v6, v0}, Lcom/android/systemui/recent/ClearView;->access$702(Lcom/android/systemui/recent/ClearView;I)I

    .line 260
    const/16 v26, 0x0

    move-object/from16 v0, v26

    #setter for: Lcom/android/systemui/recent/ClearView;->mTaskViews:[Landroid/view/View;
    invoke-static {v6, v0}, Lcom/android/systemui/recent/ClearView;->access$502(Lcom/android/systemui/recent/ClearView;[Landroid/view/View;)[Landroid/view/View;

    .line 261
    const/16 v26, 0x0

    move/from16 v0, v26

    #setter for: Lcom/android/systemui/recent/ClearView;->mRemoveTaskIndex:I
    invoke-static {v6, v0}, Lcom/android/systemui/recent/ClearView;->access$1102(Lcom/android/systemui/recent/ClearView;I)I

    .line 263
    .end local v4           #arr$:[Landroid/view/View;
    .end local v9           #i$:I
    .end local v12           #len$:I
    :cond_6
    #getter for: Lcom/android/systemui/recent/ClearView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1300(Lcom/android/systemui/recent/ClearView;)Landroid/content/Context;

    move-result-object v26

    const v27, 0x7f0c0100

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v6}, Lcom/android/systemui/recent/ClearView;->getContext()Landroid/content/Context;

    move-result-object v30

    #getter for: Lcom/android/systemui/recent/ClearView;->mTargetClearSize:J
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1200(Lcom/android/systemui/recent/ClearView;)J

    move-result-wide v31

    invoke-static/range {v30 .. v32}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 267
    .local v16, result:Ljava/lang/String;
    #getter for: Lcom/android/systemui/recent/ClearView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1300(Lcom/android/systemui/recent/ClearView;)Landroid/content/Context;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    .line 269
    .local v22, toast:Landroid/widget/Toast;
    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 270
    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentsPanelView:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$100(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/recent/RecentsPanelView;->dismissAndGoBack()V

    goto/16 :goto_0

    .line 273
    .end local v16           #result:Ljava/lang/String;
    .end local v22           #toast:Landroid/widget/Toast;
    :pswitch_3
    const/16 v26, 0x1

    move/from16 v0, v26

    #calls: Lcom/android/systemui/recent/ClearView;->setAnimationView(Z)V
    invoke-static {v6, v0}, Lcom/android/systemui/recent/ClearView;->access$1400(Lcom/android/systemui/recent/ClearView;Z)V

    .line 274
    #getter for: Lcom/android/systemui/recent/ClearView;->mProgressCircle:Lcom/android/systemui/recent/ProgressCircle;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1500(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/ProgressCircle;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/recent/ProgressCircle;->getProgress()I

    move-result v14

    .line 275
    .local v14, progress:I
    if-lez v14, :cond_7

    .line 276
    add-int/lit8 v14, v14, -0x1

    #calls: Lcom/android/systemui/recent/ClearView;->updateProgress(I)V
    invoke-static {v6, v14}, Lcom/android/systemui/recent/ClearView;->access$1600(Lcom/android/systemui/recent/ClearView;I)V

    .line 277
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v27, v14, 0x64

    div-int/lit8 v27, v27, 0x16

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x3fe0

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " %"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 280
    .local v23, usedStr:Ljava/lang/String;
    #getter for: Lcom/android/systemui/recent/ClearView;->mMemoryUsage:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1700(Lcom/android/systemui/recent/ClearView;)Landroid/widget/TextView;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const/16 v26, 0x2

    const-wide/16 v27, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 284
    .end local v23           #usedStr:Ljava/lang/String;
    :cond_7
    const/16 v26, 0x3

    const-wide/16 v27, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 289
    .end local v14           #progress:I
    :pswitch_4
    #getter for: Lcom/android/systemui/recent/ClearView;->mtargetUsedSize:J
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1800(Lcom/android/systemui/recent/ClearView;)J

    move-result-wide v17

    .line 290
    .local v17, target:J
    #getter for: Lcom/android/systemui/recent/ClearView;->mTotalSize:J
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1900(Lcom/android/systemui/recent/ClearView;)J

    move-result-wide v26

    const-wide/16 v28, 0x16

    div-long v26, v26, v28

    div-long v26, v17, v26

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3fe0

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v19, v0

    .line 291
    .local v19, targetLevel:I
    #getter for: Lcom/android/systemui/recent/ClearView;->mProgressCircle:Lcom/android/systemui/recent/ProgressCircle;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1500(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/ProgressCircle;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/recent/ProgressCircle;->getProgress()I

    move-result v15

    .line 292
    .local v15, progressAdd:I
    move/from16 v0, v19

    if-ge v15, v0, :cond_8

    .line 293
    add-int/lit8 v15, v15, 0x1

    #calls: Lcom/android/systemui/recent/ClearView;->updateProgress(I)V
    invoke-static {v6, v15}, Lcom/android/systemui/recent/ClearView;->access$1600(Lcom/android/systemui/recent/ClearView;I)V

    .line 294
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v27, v15, 0x64

    div-int/lit8 v27, v27, 0x16

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x3fe0

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " %"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 297
    .restart local v23       #usedStr:Ljava/lang/String;
    #getter for: Lcom/android/systemui/recent/ClearView;->mMemoryUsage:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1700(Lcom/android/systemui/recent/ClearView;)Landroid/widget/TextView;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const/16 v26, 0x3

    const-wide/16 v27, 0x32

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 301
    .end local v23           #usedStr:Ljava/lang/String;
    :cond_8
    const/16 v26, 0x0

    move/from16 v0, v26

    #calls: Lcom/android/systemui/recent/ClearView;->setAnimationView(Z)V
    invoke-static {v6, v0}, Lcom/android/systemui/recent/ClearView;->access$1400(Lcom/android/systemui/recent/ClearView;Z)V

    .line 302
    #getter for: Lcom/android/systemui/recent/ClearView;->mAnimateHandler:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1000(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    move-result-object v26

    const/16 v27, 0x4

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 306
    .end local v15           #progressAdd:I
    .end local v17           #target:J
    .end local v19           #targetLevel:I
    :pswitch_5
    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$300(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/recent/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v13

    .line 307
    .local v13, mTaskList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    if-eqz v13, :cond_a

    .line 308
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 309
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_9
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    .line 310
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recent/TaskDescription;

    .line 311
    .local v20, task:Lcom/android/systemui/recent/TaskDescription;
    if-eqz v20, :cond_9

    #getter for: Lcom/android/systemui/recent/ClearView;->mRecentsPanelView:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$100(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v26

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/recent/RecentsPanelView;->isAppClearLocked(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 312
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 316
    .end local v11           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/systemui/recent/TaskDescription;>;"
    .end local v20           #task:Lcom/android/systemui/recent/TaskDescription;
    :cond_a
    #calls: Lcom/android/systemui/recent/ClearView;->updateMemoryInfo()V
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$900(Lcom/android/systemui/recent/ClearView;)V

    .line 317
    #getter for: Lcom/android/systemui/recent/ClearView;->mAnimateHandler:Lcom/android/systemui/recent/ClearView$MyAnimateHandler;
    invoke-static {v6}, Lcom/android/systemui/recent/ClearView;->access$1000(Lcom/android/systemui/recent/ClearView;)Lcom/android/systemui/recent/ClearView$MyAnimateHandler;

    move-result-object v26

    const/16 v27, 0x1

    const-wide/16 v28, 0x3e8

    invoke-virtual/range {v26 .. v29}, Lcom/android/systemui/recent/ClearView$MyAnimateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
