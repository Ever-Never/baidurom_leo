.class public Lcom/inveno/flow/database/table/ManyToOne;
.super Lcom/inveno/flow/database/table/Property;
.source "ManyToOne.java"


# instance fields
.field private manyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/inveno/flow/database/table/Property;-><init>()V

    return-void
.end method


# virtual methods
.method public getManyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lcom/inveno/flow/database/table/ManyToOne;->manyClass:Ljava/lang/Class;

    return-object v0
.end method

.method public setManyClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, manyClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/inveno/flow/database/table/ManyToOne;->manyClass:Ljava/lang/Class;

    .line 14
    return-void
.end method
