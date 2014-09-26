.class public Lcom/inveno/flow/database/table/OneToMany;
.super Lcom/inveno/flow/database/table/Property;
.source "OneToMany.java"


# instance fields
.field private oneClass:Ljava/lang/Class;
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
.method public getOneClass()Ljava/lang/Class;
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
    iget-object v0, p0, Lcom/inveno/flow/database/table/OneToMany;->oneClass:Ljava/lang/Class;

    return-object v0
.end method

.method public setOneClass(Ljava/lang/Class;)V
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
    .local p1, oneClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/inveno/flow/database/table/OneToMany;->oneClass:Ljava/lang/Class;

    .line 14
    return-void
.end method
