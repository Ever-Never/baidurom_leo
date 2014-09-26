.class Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;
.super Ljava/lang/Object;
.source "AbstractDragListViewComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnDragListStateChangedListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OnDragListStateChangedListener"


# instance fields
.field private mCurStateTextView:Landroid/widget/TextView;

.field private mPosTextView:Landroid/widget/TextView;

.field private mPreStateTextView:Landroid/widget/TextView;

.field private mReverseRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x3ccc

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 814
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 815
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0xfa

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 816
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 818
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mReverseRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 821
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mReverseRotateAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 822
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mReverseRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 823
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mReverseRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 824
    return-void
.end method

.method private showDebugInfo(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V
    .locals 6
    .parameter "dragListViewComponent"
    .parameter "preState"
    .parameter "curState"
    .parameter "startY"
    .parameter "currentY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 840
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mCurStateTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mCurStateTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mPreStateTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mPreStateTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    :cond_1
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mPosTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 849
    const-string v1, "(%1.0f, %1.0f) = %1.0f"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1, v5, p4, p5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->distance(IFF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, posInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mPosTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    .end local v0           #posInfo:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V
    .locals 7
    .parameter "dragListViewComponent"
    .parameter "preState"
    .parameter "curState"
    .parameter "startY"
    .parameter "currentY"

    .prologue
    .line 863
    invoke-direct/range {p0 .. p5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->showDebugInfo(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 865
    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->getDragHeaderView()Landroid/view/View;

    move-result-object v1

    .line 867
    .local v1, dragHeaderView:Landroid/view/View;
    const-string v4, "mm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", preState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", startY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", currentY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const v4, 0x7f0800ee

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 871
    .local v3, refreshProgressBar:Landroid/widget/ProgressBar;
    const v4, 0x7f0800ed

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 873
    .local v0, arrowImageView:Landroid/widget/ImageView;
    const v4, 0x7f0800ef

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 876
    .local v2, infoTextView:Landroid/widget/TextView;
    sget-object v4, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$2;->$SwitchMap$com$baidu$bulletin$ui$draglist$IOnStateChangeListener$State:[I

    invoke-virtual {p3}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 989
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 878
    :pswitch_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 879
    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->hideDragHeader()V

    goto :goto_0

    .line 883
    :pswitch_2
    sget-object v4, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    if-eq p2, v4, :cond_1

    sget-object v4, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    if-ne p2, v4, :cond_0

    .line 886
    :cond_1
    const-string v4, "OnDragListStateChangedListener"

    const-string v5, "come here to change!----"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 894
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 895
    const v4, 0x7f0c027f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 899
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 900
    const/4 v4, 0x0

    sput-boolean v4, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    .line 902
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 903
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mReverseRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 905
    invoke-virtual {p1, p4, p5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->showDragHeader(FF)V

    goto :goto_0

    .line 911
    :pswitch_3
    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 914
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 918
    const v4, 0x7f0c027f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 919
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 923
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 925
    invoke-virtual {p1, p4, p5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->showDragHeader(FF)V

    goto :goto_0

    .line 932
    :pswitch_4
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 936
    const v4, 0x7f0c0280

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 937
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 941
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 942
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 943
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 945
    invoke-virtual {p1, p4, p5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->showDragHeader(FF)V

    goto :goto_0

    .line 950
    :pswitch_5
    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 953
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 957
    const v4, 0x7f0c0280

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 958
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 959
    const/4 v4, 0x0

    sput-boolean v4, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    .line 961
    invoke-virtual {p1, p4, p5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->showDragHeader(FF)V

    goto/16 :goto_0

    .line 968
    :pswitch_6
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 972
    const v4, 0x7f0c0281

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 973
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 977
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 978
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 980
    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->showDragHeader()V

    goto/16 :goto_0

    .line 876
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setDebugStateTextView(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter "curStateTextView"
    .parameter "preStateTextView"
    .parameter "posTextView"

    .prologue
    .line 828
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mCurStateTextView:Landroid/widget/TextView;

    .line 829
    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mPreStateTextView:Landroid/widget/TextView;

    .line 830
    iput-object p3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnDragListStateChangedListener;->mPosTextView:Landroid/widget/TextView;

    .line 832
    return-void
.end method
