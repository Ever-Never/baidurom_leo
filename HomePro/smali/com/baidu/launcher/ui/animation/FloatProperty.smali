.class public abstract Lcom/baidu/launcher/ui/animation/FloatProperty;
.super Lcom/baidu/launcher/ui/animation/Property;
.source "FloatProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/baidu/launcher/ui/animation/Property",
        "<TT;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 33
    .local p0, this:Lcom/baidu/launcher/ui/animation/FloatProperty;,"Lcom/baidu/launcher/ui/animation/FloatProperty<TT;>;"
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0, p1}, Lcom/baidu/launcher/ui/animation/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;Ljava/lang/Float;)V
    .locals 1
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/baidu/launcher/ui/animation/FloatProperty;,"Lcom/baidu/launcher/ui/animation/FloatProperty<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/animation/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 45
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    .local p0, this:Lcom/baidu/launcher/ui/animation/FloatProperty;,"Lcom/baidu/launcher/ui/animation/FloatProperty<TT;>;"
    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/baidu/launcher/ui/animation/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method
