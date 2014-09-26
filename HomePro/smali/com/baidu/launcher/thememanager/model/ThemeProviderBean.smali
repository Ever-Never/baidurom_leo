.class public Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;
.super Ljava/lang/Object;
.source "ThemeProviderBean.java"


# instance fields
.field private TITLE:Ljava/lang/String;

.field private _ID:I

.field private dateModified:J

.field private path:Ljava/lang/String;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateModified()J
    .locals 2

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->dateModified:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->size:I

    return v0
.end method

.method public getTITLE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->TITLE:Ljava/lang/String;

    return-object v0
.end method

.method public get_ID()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->_ID:I

    return v0
.end method

.method public setDateModified(J)V
    .locals 0
    .parameter "dateModified"

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->dateModified:J

    .line 21
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->path:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 52
    iput p1, p0, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->size:I

    .line 53
    return-void
.end method

.method public setTITLE(Ljava/lang/String;)V
    .locals 0
    .parameter "tITLE"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->TITLE:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public set_ID(I)V
    .locals 0
    .parameter "_ID"

    .prologue
    .line 28
    iput p1, p0, Lcom/baidu/launcher/thememanager/model/ThemeProviderBean;->_ID:I

    .line 29
    return-void
.end method
