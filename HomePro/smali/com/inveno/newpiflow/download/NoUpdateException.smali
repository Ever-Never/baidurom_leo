.class public Lcom/inveno/newpiflow/download/NoUpdateException;
.super Ljava/lang/Exception;
.source "NoUpdateException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private strMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/download/NoUpdateException;->strMsg:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "strMsg"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/download/NoUpdateException;->strMsg:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/inveno/newpiflow/download/NoUpdateException;->strMsg:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inveno/newpiflow/download/NoUpdateException;->strMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/inveno/newpiflow/download/NoUpdateException;->strMsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;)V

    .line 25
    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    return-void
.end method
