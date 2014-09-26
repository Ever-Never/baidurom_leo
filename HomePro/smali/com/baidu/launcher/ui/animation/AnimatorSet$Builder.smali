.class public Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field private mCurrentNode:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

.field final synthetic this$0:Lcom/baidu/launcher/ui/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/animation/AnimatorSet;Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter
    .parameter "anim"

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->this$0:Lcom/baidu/launcher/ui/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$100(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 1029
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    invoke-direct {v0, p2}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;-><init>(Lcom/baidu/launcher/ui/animation/Animator;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 1031
    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$100(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$400(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    :cond_0
    return-void
.end method


# virtual methods
.method public after(J)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;
    .locals 2
    .parameter "delay"

    .prologue
    .line 1105
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->ofFloat([F)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v0

    .line 1106
    .local v0, anim:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 1107
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->after(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;

    .line 1108
    return-object p0

    .line 1105
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public after(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;
    .locals 3
    .parameter "anim"

    .prologue
    .line 1084
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->this$0:Lcom/baidu/launcher/ui/animation/AnimatorSet;

    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$100(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 1085
    .local v1, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    .line 1086
    new-instance v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .end local v1           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;-><init>(Lcom/baidu/launcher/ui/animation/Animator;)V

    .line 1087
    .restart local v1       #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->this$0:Lcom/baidu/launcher/ui/animation/AnimatorSet;

    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$100(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->this$0:Lcom/baidu/launcher/ui/animation/AnimatorSet;

    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$400(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_0
    new-instance v0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;-><init>(Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;I)V

    .line 1091
    .local v0, dependency:Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    invoke-virtual {v2, v0}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->addDependency(Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;)V

    .line 1092
    return-object p0
.end method

.method public before(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;
    .locals 4
    .parameter "anim"

    .prologue
    .line 1064
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->this$0:Lcom/baidu/launcher/ui/animation/AnimatorSet;

    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$100(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 1065
    .local v1, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    .line 1066
    new-instance v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .end local v1           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;-><init>(Lcom/baidu/launcher/ui/animation/Animator;)V

    .line 1067
    .restart local v1       #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->this$0:Lcom/baidu/launcher/ui/animation/AnimatorSet;

    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$100(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->this$0:Lcom/baidu/launcher/ui/animation/AnimatorSet;

    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$400(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    :cond_0
    new-instance v0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;

    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;-><init>(Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;I)V

    .line 1071
    .local v0, dependency:Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;
    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->addDependency(Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;)V

    .line 1072
    return-object p0
.end method

.method public with(Lcom/baidu/launcher/ui/animation/Animator;)Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;
    .locals 4
    .parameter "anim"

    .prologue
    .line 1044
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->this$0:Lcom/baidu/launcher/ui/animation/AnimatorSet;

    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$100(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .line 1045
    .local v1, node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    if-nez v1, :cond_0

    .line 1046
    new-instance v1, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    .end local v1           #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    invoke-direct {v1, p1}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;-><init>(Lcom/baidu/launcher/ui/animation/Animator;)V

    .line 1047
    .restart local v1       #node:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->this$0:Lcom/baidu/launcher/ui/animation/AnimatorSet;

    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodeMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$100(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->this$0:Lcom/baidu/launcher/ui/animation/AnimatorSet;

    #getter for: Lcom/baidu/launcher/ui/animation/AnimatorSet;->mNodes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/baidu/launcher/ui/animation/AnimatorSet;->access$400(Lcom/baidu/launcher/ui/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_0
    new-instance v0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;

    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/AnimatorSet$Builder;->mCurrentNode:Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;-><init>(Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;I)V

    .line 1051
    .local v0, dependency:Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;
    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/animation/AnimatorSet$Node;->addDependency(Lcom/baidu/launcher/ui/animation/AnimatorSet$Dependency;)V

    .line 1052
    return-object p0
.end method
