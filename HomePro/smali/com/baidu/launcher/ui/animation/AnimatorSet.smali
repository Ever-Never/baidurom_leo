.class public final Lcom/baidu/launcher/ui/animation/AnimatorSet;
.super Lcom/baidu/launcher/ui/animation/Animator;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;,
        Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;,
        Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;,
        Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;,
        Lcom/baidu/launcher/ui/animation/AnimatorSet$DependencyListener;
    }
.end annotation


# instance fields
.field private mDelayAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

.field private mDuration:J

.field private mNeedsSort:Z

.field private mNodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/baidu/launcher/ui/animation/Animator;",
            "Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mSetListener:Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

.field private mSortedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDelay:J

.field private mStarted:Z

.field mTerminated:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/Animator;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNeedsSort:Z

    .line 96
    iput-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSetListener:Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

    .line 105
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mTerminated:Z

    .line 111
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStarted:Z

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStartDelay:J

    .line 117
    iput-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDelayAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 123
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDuration:J

    .line 1012
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/baidu/launcher/ui/animation/AnimatorSet;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStarted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    return-object v0
.end method

.method private sortNodes()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 785
    iget-boolean v11, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNeedsSort:Z

    if-eqz v11, :cond_7

    .line 786
    iget-object v11, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 787
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 788
    .local v9, roots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;>;"
    iget-object v11, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 789
    .local v6, numNodes:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 790
    iget-object v11, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 791
    .local v3, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    iget-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 792
    :cond_0
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    .end local v3           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 796
    .local v10, tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;>;"
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 797
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 798
    .local v7, numRoots:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_5

    .line 799
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 800
    .local v8, root:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v11, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v11, v8, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    .line 802
    iget-object v11, v8, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 803
    .local v5, numDependents:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v5, :cond_4

    .line 804
    iget-object v11, v8, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 805
    .restart local v3       #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 806
    iget-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_3

    .line 807
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 798
    .end local v2           #j:I
    .end local v3           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    .end local v5           #numDependents:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 812
    .end local v8           #root:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 813
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 814
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 816
    .end local v7           #numRoots:I
    :cond_6
    iput-boolean v13, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNeedsSort:Z

    .line 817
    iget-object v11, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget-object v12, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v11, v12, :cond_b

    .line 818
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 825
    .end local v1           #i:I
    .end local v6           #numNodes:I
    .end local v9           #roots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;>;"
    .end local v10           #tmpRoots:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;>;"
    :cond_7
    iget-object v11, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 826
    .restart local v6       #numNodes:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-ge v1, v6, :cond_b

    .line 827
    iget-object v11, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 828
    .restart local v3       #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v11, :cond_a

    iget-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_a

    .line 829
    iget-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 830
    .local v4, numDependencies:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_5
    if-ge v2, v4, :cond_a

    .line 831
    iget-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;

    .line 832
    .local v0, dependency:Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;
    iget-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v11, :cond_8

    .line 833
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 835
    :cond_8
    iget-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;->node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 836
    iget-object v11, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;->node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 842
    .end local v0           #dependency:Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;
    .end local v2           #j:I
    .end local v4           #numDependencies:I
    :cond_a
    iput-boolean v13, v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->done:Z

    .line 826
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 845
    .end local v3           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_b
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 284
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mTerminated:Z

    .line 285
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 286
    const/4 v3, 0x0

    .line 287
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 288
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    check-cast v3, Ljava/util/ArrayList;

    .line 289
    .restart local v3       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    .line 290
    .local v1, listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/baidu/launcher/ui/animation/Animator;)V

    goto :goto_0

    .line 293
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDelayAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDelayAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 296
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDelayAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->cancel()V

    .line 302
    :cond_1
    if-eqz v3, :cond_3

    .line 303
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    .line 304
    .restart local v1       #listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V

    goto :goto_1

    .line 297
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 298
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 299
    .local v2, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v4, v2, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/animation/Animator;->cancel()V

    goto :goto_2

    .line 307
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStarted:Z

    .line 309
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    :cond_4
    return-void
.end method

.method public bridge synthetic clone()Lcom/baidu/launcher/ui/animation/Animator;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->clone()Lcom/baidu/launcher/ui/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/baidu/launcher/ui/animation/AnimatorSet;
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 551
    invoke-super {p0}, Lcom/baidu/launcher/ui/animation/Animator;->clone()Lcom/baidu/launcher/ui/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;

    .line 560
    .local v0, anim:Lcom/baidu/launcher/ui/animation/AnimatorSet;
    const/4 v12, 0x1

    iput-boolean v12, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNeedsSort:Z

    .line 561
    iput-boolean v13, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mTerminated:Z

    .line 562
    iput-boolean v13, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStarted:Z

    .line 563
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    .line 564
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    .line 565
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    .line 566
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    .line 571
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 572
    .local v11, nodeCloneMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;>;"
    iget-object v12, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 573
    .local v9, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    invoke-virtual {v9}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->clone()Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    move-result-object v10

    .line 574
    .local v10, nodeClone:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v12, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v12, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;

    iget-object v13, v10, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v12, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iput-object v14, v10, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 579
    iput-object v14, v10, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 580
    iput-object v14, v10, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 581
    iput-object v14, v10, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 584
    iget-object v12, v10, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v12}, Lcom/baidu/launcher/ui/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    .line 585
    .local v2, cloneListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    if-eqz v2, :cond_0

    .line 586
    const/4 v8, 0x0

    .line 587
    .local v8, listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    .line 588
    .local v7, listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    instance-of v12, v7, Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v12, :cond_1

    .line 589
    if-nez v8, :cond_2

    .line 590
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .restart local v8       #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    :cond_2
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    .end local v7           #listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    :cond_3
    if-eqz v8, :cond_0

    .line 596
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    .line 597
    .restart local v7       #listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 604
    .end local v2           #cloneListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    .end local v8           #listenersToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    .end local v9           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    .end local v10           #nodeClone:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_4
    iget-object v12, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 605
    .restart local v9       #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 606
    .restart local v10       #nodeClone:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v12, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    .line 607
    iget-object v12, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;

    .line 608
    .local v4, dependency:Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;
    iget-object v12, v4, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;->node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 609
    .local v3, clonedDependencyNode:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    new-instance v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;

    iget v12, v4, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;->rule:I

    invoke-direct {v1, v3, v12}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;-><init>(Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;I)V

    .line 611
    .local v1, cloneDependency:Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;
    invoke-virtual {v10, v1}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->addDependency(Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;)V

    goto :goto_2

    .line 616
    .end local v1           #cloneDependency:Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;
    .end local v3           #clonedDependencyNode:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    .end local v4           #dependency:Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    .end local v10           #nodeClone:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_6
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->clone()Lcom/baidu/launcher/ui/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 6

    .prologue
    .line 319
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mTerminated:Z

    .line 320
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 321
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->sortNodes()V

    .line 324
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 325
    .local v2, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSetListener:Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

    if-nez v4, :cond_0

    .line 326
    new-instance v4, Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v4, p0, p0}, Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;-><init>(Lcom/baidu/launcher/ui/animation/AnimatorSet;Lcom/baidu/launcher/ui/animation/AnimatorSet;)V

    iput-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSetListener:Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

    .line 328
    :cond_0
    iget-object v4, v2, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    iget-object v5, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSetListener:Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/animation/Animator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 331
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDelayAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    if-eqz v4, :cond_2

    .line 332
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDelayAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->cancel()V

    .line 334
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 335
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 336
    .restart local v2       #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v4, v2, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/animation/Animator;->end()V

    goto :goto_1

    .line 339
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 340
    iget-object v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 342
    .local v3, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    .line 343
    .local v1, listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    invoke-interface {v1, p0}, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V

    goto :goto_2

    .line 346
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    .end local v3           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStarted:Z

    .line 348
    :cond_5
    return-void
.end method

.method public getChildAnimations()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator;>;"
    iget-object v3, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 209
    .local v2, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v3, v2, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v2           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDuration:J

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 378
    iget-wide v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    .line 357
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 358
    .local v1, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v2, v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    const/4 v2, 0x1

    .line 362
    .end local v1           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStarted:Z

    return v0
.end method

.method public play(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;
    .locals 1
    .parameter "anim"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNeedsSort:Z

    .line 270
    new-instance v0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;-><init>(Lcom/baidu/launcher/ui/animation/AnimatorSet;Lcom/baidu/launcher/ui/animation/Animator;)V

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSequentially(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/animation/Animator;>;"
    const/4 v2, 0x1

    .line 186
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 187
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNeedsSort:Z

    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 189
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->play(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    .line 196
    :cond_0
    return-void

    .line 191
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 192
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->play(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v2, v1}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->before(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs playSequentially([Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 3
    .parameter "items"

    .prologue
    const/4 v2, 0x1

    .line 167
    if-eqz p1, :cond_0

    .line 168
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNeedsSort:Z

    .line 169
    array-length v1, p1

    if-ne v1, v2, :cond_1

    .line 170
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->play(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    .line 177
    :cond_0
    return-void

    .line 172
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 173
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->play(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->before(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public playTogether(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/baidu/launcher/ui/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/baidu/launcher/ui/animation/Animator;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 148
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNeedsSort:Z

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, builder:Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/Animator;

    .line 151
    .local v0, anim:Lcom/baidu/launcher/ui/animation/Animator;
    if-nez v1, :cond_0

    .line 152
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->play(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->with(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 158
    .end local v0           #anim:Lcom/baidu/launcher/ui/animation/Animator;
    .end local v1           #builder:Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public varargs playTogether([Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 3
    .parameter "items"

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNeedsSort:Z

    .line 134
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->play(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 135
    .local v0, builder:Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 136
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->with(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v0           #builder:Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/baidu/launcher/ui/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->setDuration(J)Lcom/baidu/launcher/ui/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lcom/baidu/launcher/ui/animation/AnimatorSet;
    .locals 4
    .parameter "duration"

    .prologue
    .line 415
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 416
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "duration must be a value of zero or greater"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 421
    .local v1, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v2, v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v2, p1, p2}, Lcom/baidu/launcher/ui/animation/Animator;->setDuration(J)Lcom/baidu/launcher/ui/animation/Animator;

    goto :goto_0

    .line 423
    .end local v1           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_1
    iput-wide p1, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDuration:J

    .line 424
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 3
    .parameter "interpolator"

    .prologue
    .line 234
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 235
    .local v1, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v2, v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v2, p1}, Lcom/baidu/launcher/ui/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 237
    .end local v1           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public setStartDelay(J)V
    .locals 0
    .parameter "startDelay"

    .prologue
    .line 389
    iput-wide p1, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStartDelay:J

    .line 390
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 224
    return-void
.end method

.method public setupEndValues()V
    .locals 3

    .prologue
    .line 436
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 437
    .local v1, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v2, v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/Animator;->setupEndValues()V

    goto :goto_0

    .line 439
    .end local v1           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 3

    .prologue
    .line 429
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 430
    .local v1, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v2, v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/Animator;->setupStartValues()V

    goto :goto_0

    .line 432
    .end local v1           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 20

    .prologue
    .line 451
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mTerminated:Z

    .line 452
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStarted:Z

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->sortNodes()V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 459
    .local v13, numSortedNodes:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v13, :cond_3

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 462
    .local v9, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v0, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/launcher/ui/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v14

    .line 463
    .local v14, oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_2

    .line 464
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    .local v3, clonedListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    .line 468
    .local v8, listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    instance-of v0, v8, Lcom/baidu/launcher/ui/animation/AnimatorSet$DependencyListener;

    move/from16 v16, v0

    if-nez v16, :cond_1

    instance-of v0, v8, Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 470
    :cond_1
    iget-object v0, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/baidu/launcher/ui/animation/Animator;->removeListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 459
    .end local v3           #clonedListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #listener:Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 480
    .end local v9           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    .end local v14           #oldListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v10, nodesToStart:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;>;"
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v13, :cond_8

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSortedNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 483
    .restart local v9       #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSetListener:Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 484
    new-instance v16, Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;-><init>(Lcom/baidu/launcher/ui/animation/AnimatorSet;Lcom/baidu/launcher/ui/animation/AnimatorSet;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSetListener:Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

    .line 486
    :cond_4
    iget-object v0, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    iget-object v0, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_6

    .line 487
    :cond_5
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :goto_3
    iget-object v0, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mSetListener:Lcom/baidu/launcher/ui/animation/AnimatorSet$AnimatorSetListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/baidu/launcher/ui/animation/Animator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 481
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 489
    :cond_6
    iget-object v0, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 490
    .local v11, numDependencies:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_4
    if-ge v7, v11, :cond_7

    .line 491
    iget-object v0, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;

    .line 492
    .local v4, dependency:Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;
    iget-object v0, v4, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;->node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    move-object/from16 v16, v0

    new-instance v17, Lcom/baidu/launcher/ui/animation/AnimatorSet$DependencyListener;

    iget v0, v4, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;->rule:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v9, v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet$DependencyListener;-><init>(Lcom/baidu/launcher/ui/animation/AnimatorSet;Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;I)V

    invoke-virtual/range {v16 .. v17}, Lcom/baidu/launcher/ui/animation/Animator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 490
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 495
    .end local v4           #dependency:Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;
    :cond_7
    iget-object v0, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_3

    .line 500
    .end local v7           #j:I
    .end local v9           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    .end local v11           #numDependencies:I
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_9

    .line 501
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 502
    .restart local v9       #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v0, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/launcher/ui/animation/Animator;->start()V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mPlayingSet:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v9, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->animation:Lcom/baidu/launcher/ui/animation/Animator;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 506
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    :cond_9
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    invoke-static/range {v16 .. v16}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->ofFloat([F)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDelayAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDelayAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDelayAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-object/from16 v16, v0

    new-instance v17, Lcom/baidu/launcher/ui/animation/AnimatorSet$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/baidu/launcher/ui/animation/AnimatorSet$1;-><init>(Lcom/baidu/launcher/ui/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual/range {v16 .. v17}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mDelayAnim:Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 526
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 529
    .local v15, tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 530
    .local v12, numListeners:I
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v12, :cond_b

    .line 531
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/baidu/launcher/ui/animation/Animator;)V

    .line 530
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 534
    .end local v12           #numListeners:I
    .end local v15           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStartDelay:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_c

    .line 537
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mStarted:Z

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/animation/AnimatorSet;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 541
    .restart local v15       #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 542
    .restart local v12       #numListeners:I
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v12, :cond_c

    .line 543
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V

    .line 542
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 547
    .end local v12           #numListeners:I
    .end local v15           #tmpListeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;>;"
    :cond_c
    return-void

    .line 506
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
