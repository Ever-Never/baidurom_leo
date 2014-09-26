.class Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect$1;
.super Ljava/lang/Object;
.source "CellDynamic.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->setAnimatorEndListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect$1;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 151
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect$1;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;

    #calls: Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->newAlternate()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->access$000(Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;)V

    .line 157
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 152
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 153
    return-void
.end method
