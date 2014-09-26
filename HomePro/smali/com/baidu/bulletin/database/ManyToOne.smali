.class public interface abstract annotation Lcom/baidu/bulletin/database/ManyToOne;
.super Ljava/lang/Object;
.source "ManyToOne.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract cascadeType()Ljava/lang/Class;
.end method

.method public abstract foreignKey()Ljava/lang/String;
.end method
