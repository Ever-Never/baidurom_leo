.class public Lcom/inveno/flow/database/SqlInfo;
.super Ljava/lang/Object;
.source "SqlInfo.java"


# instance fields
.field private bindArgs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private format:Ljava/text/SimpleDateFormat;

.field private sql:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 20
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flow/database/SqlInfo;->format:Ljava/text/SimpleDateFormat;

    .line 11
    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inveno/flow/database/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inveno/flow/database/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    .line 64
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/sql/Date;

    if-eqz v0, :cond_2

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/inveno/flow/database/SqlInfo;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 68
    .end local p1
    :cond_2
    iget-object v0, p0, Lcom/inveno/flow/database/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public getBindArgs()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/inveno/flow/database/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getBindArgsAsArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inveno/flow/database/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/inveno/flow/database/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBindArgsAsStringArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    iget-object v2, p0, Lcom/inveno/flow/database/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/inveno/flow/database/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 47
    .local v1, strings:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/inveno/flow/database/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 52
    .end local v0           #i:I
    .end local v1           #strings:[Ljava/lang/String;
    :goto_1
    return-object v1

    .line 48
    .restart local v0       #i:I
    .restart local v1       #strings:[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/inveno/flow/database/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0           #i:I
    .end local v1           #strings:[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inveno/flow/database/SqlInfo;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public setBindArgs(Ljava/util/LinkedList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, bindArgs:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/inveno/flow/database/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    .line 36
    return-void
.end method

.method public setSql(Ljava/lang/String;)V
    .locals 0
    .parameter "sql"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/inveno/flow/database/SqlInfo;->sql:Ljava/lang/String;

    .line 28
    return-void
.end method
