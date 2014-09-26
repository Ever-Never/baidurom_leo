.class public Lcom/baidu/launcher/data/item/ThumbnailScreen;
.super Ljava/lang/Object;
.source "ThumbnailScreen.java"


# instance fields
.field private isScreen:Z

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private screenId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/ThumbnailScreen;->isScreen:Z

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/data/item/ThumbnailScreen;->screenId:I

    return-void
.end method


# virtual methods
.method public getRelativeLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/baidu/launcher/data/item/ThumbnailScreen;->relativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getScreenId()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/baidu/launcher/data/item/ThumbnailScreen;->screenId:I

    return v0
.end method

.method public isScreen()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/baidu/launcher/data/item/ThumbnailScreen;->isScreen:Z

    return v0
.end method

.method public setRelativeLayout(Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter "relativeLayout"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/baidu/launcher/data/item/ThumbnailScreen;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 14
    return-void
.end method

.method public setScreen(Z)V
    .locals 0
    .parameter "isScreen"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/baidu/launcher/data/item/ThumbnailScreen;->isScreen:Z

    .line 20
    return-void
.end method

.method public setScreenId(I)V
    .locals 0
    .parameter "screenId"

    .prologue
    .line 25
    iput p1, p0, Lcom/baidu/launcher/data/item/ThumbnailScreen;->screenId:I

    .line 26
    return-void
.end method
