.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;
.super Ljava/lang/Object;
.source "ViewHolderGridView.java"


# instance fields
.field private locationCode:Ljava/lang/String;

.field private locationImage:Landroid/widget/ImageView;

.field private locationName:Ljava/lang/String;

.field private tvLocation:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 1
    .parameter "tvLocation"
    .parameter "imageView"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;-><init>(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter "tvLocation"
    .parameter "locationCode"
    .parameter "divider"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->tvLocation:Landroid/widget/TextView;

    .line 24
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->locationCode:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->locationImage:Landroid/widget/ImageView;

    .line 26
    return-void
.end method


# virtual methods
.method public getLocationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->locationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->locationImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLocationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->locationName:Ljava/lang/String;

    return-object v0
.end method

.method public getTvLocation()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->tvLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method public setLocationCode(Ljava/lang/String;)V
    .locals 0
    .parameter "locationCode"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->locationCode:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setLocationImage(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "locationImage"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->locationImage:Landroid/widget/ImageView;

    .line 54
    return-void
.end method

.method public setLocationName(Ljava/lang/String;)V
    .locals 0
    .parameter "locationName"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolderGridView;->locationName:Ljava/lang/String;

    .line 46
    return-void
.end method
