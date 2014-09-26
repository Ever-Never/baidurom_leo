.class public Lcom/baidu/launcher/feedback/FeedBackFragment;
.super Landroid/support/v4/app/Fragment;
.source "FeedBackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;
    }
.end annotation


# static fields
.field private static final SAVE_STATE_AGE:Ljava/lang/String; = "select_age"

.field private static final SAVE_STATE_CONTEND:Ljava/lang/String; = "content"

.field private static final SAVE_STATE_GENDER:Ljava/lang/String; = "select_gender"

.field private static final SAVE_STATE_MAIL:Ljava/lang/String; = "email"

.field private static final SAVE_STATE_PHONENUMBER:Ljava/lang/String; = "phonenumber"

.field public static final TYPE_SELECTED_AGE:I = 0x0

.field public static final TYPE_SELECTED_GENDER:I = 0x1


# instance fields
.field public final MAX_CONTENT_LENGTH:I

.field private final TAG:Ljava/lang/String;

.field private mAgeData:[Ljava/lang/String;

.field mAgePopupWindow:Landroid/widget/PopupWindow;

.field private mAgeSelect:Ljava/lang/String;

.field private mBtnSumbitFeedBack:Landroid/widget/Button;

.field private mDefaultSelect:Ljava/lang/String;

.field private mEdtCantactMail:Landroid/widget/EditText;

.field private mEdtCantactPhoneNumber:Landroid/widget/EditText;

.field private mEdtContent:Landroid/widget/EditText;

.field private mFeedbackContent:Ljava/lang/String;

.field private mGender:I

.field private mGenderData:[Ljava/lang/String;

.field mGenderPopupWindow:Landroid/widget/PopupWindow;

.field private mGengerSelect:Ljava/lang/String;

.field private mMail:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mRemainNumber:Landroid/widget/TextView;

.field private mResponse:Ljava/lang/String;

.field private mTvAgeSelected:Landroid/widget/TextView;

.field private mTvGenderSelected:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    const-class v0, Lcom/baidu/launcher/feedback/FeedBackFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->TAG:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeSelect:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGender:I

    .line 59
    const/16 v0, 0x12c

    iput v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->MAX_CONTENT_LENGTH:I

    .line 60
    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgePopupWindow:Landroid/widget/PopupWindow;

    .line 61
    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGenderPopupWindow:Landroid/widget/PopupWindow;

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/feedback/FeedBackFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mRemainNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/feedback/FeedBackFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->showPopupSelectAge()V

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/feedback/FeedBackFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeData:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/feedback/FeedBackFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvAgeSelected:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/feedback/FeedBackFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGengerSelect:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/baidu/launcher/feedback/FeedBackFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGengerSelect:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/feedback/FeedBackFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGenderData:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/feedback/FeedBackFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvGenderSelected:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/feedback/FeedBackFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->showPopupSelectGender()V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/feedback/FeedBackFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->checkContentinvalidate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/feedback/FeedBackFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mFeedbackContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/feedback/FeedBackFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeSelect:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/baidu/launcher/feedback/FeedBackFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeSelect:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/baidu/launcher/feedback/FeedBackFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGender:I

    return v0
.end method

.method static synthetic access$602(Lcom/baidu/launcher/feedback/FeedBackFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGender:I

    return p1
.end method

.method static synthetic access$700(Lcom/baidu/launcher/feedback/FeedBackFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/feedback/FeedBackFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mMail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/feedback/FeedBackFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->clearFeedbackData()V

    return-void
.end method

.method private checkContentinvalidate()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 178
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtContent:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mFeedbackContent:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtCantactMail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mMail:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtCantactPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mPhoneNumber:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mFeedbackContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c019d

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    const/4 v0, 0x0

    .line 186
    :cond_0
    return v0
.end method

.method private clearFeedbackData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->clearSaveInstanceState()V

    .line 191
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtContent:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtCantactMail:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtCantactPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method private clearSaveInstanceState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "content"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "email"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "phonenumber"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "select_age"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "select_gender"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    return-void
.end method

.method private initSaveState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtContent:Landroid/widget/EditText;

    const-string v2, "content"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtCantactMail:Landroid/widget/EditText;

    const-string v2, "email"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtCantactPhoneNumber:Landroid/widget/EditText;

    const-string v2, "phonenumber"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const-string v1, "select_age"

    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mDefaultSelect:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeSelect:Ljava/lang/String;

    .line 243
    const-string v1, "select_gender"

    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mDefaultSelect:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGengerSelect:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvAgeSelected:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeSelect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvGenderSelected:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGengerSelect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method

.method private saveInstanceState()V
    .locals 4

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "content"

    iget-object v3, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtContent:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "email"

    iget-object v3, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtCantactMail:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "phonenumber"

    iget-object v3, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtCantactPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "select_age"

    iget-object v3, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeSelect:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "select_gender"

    iget-object v3, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGengerSelect:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    return-void
.end method

.method private showPopupSelectAge()V
    .locals 6

    .prologue
    .line 251
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgePopupWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 252
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v0, listview:Landroid/widget/ListView;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 254
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 255
    new-instance v1, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;-><init>(Lcom/baidu/launcher/feedback/FeedBackFragment;I)V

    .line 256
    .local v1, selecetAdapter:Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 257
    new-instance v2, Lcom/baidu/launcher/feedback/FeedBackFragment$5;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/feedback/FeedBackFragment$5;-><init>(Lcom/baidu/launcher/feedback/FeedBackFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvAgeSelected:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    const/16 v4, 0xc8

    const/4 v5, 0x1

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgePopupWindow:Landroid/widget/PopupWindow;

    .line 270
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgePopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvAgeSelected:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeData:[Ljava/lang/String;

    array-length v4, v4

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 272
    .end local v0           #listview:Landroid/widget/ListView;
    .end local v1           #selecetAdapter:Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgePopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvAgeSelected:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 273
    return-void
.end method

.method private showPopupSelectGender()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 277
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGenderPopupWindow:Landroid/widget/PopupWindow;

    if-nez v2, :cond_0

    .line 278
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, listview:Landroid/widget/ListView;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 280
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 281
    new-instance v1, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;

    invoke-direct {v1, p0, v5}, Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;-><init>(Lcom/baidu/launcher/feedback/FeedBackFragment;I)V

    .line 283
    .local v1, selecetAdapter:Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    new-instance v2, Lcom/baidu/launcher/feedback/FeedBackFragment$6;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/feedback/FeedBackFragment$6;-><init>(Lcom/baidu/launcher/feedback/FeedBackFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 304
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvGenderSelected:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    const/16 v4, 0x12c

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGenderPopupWindow:Landroid/widget/PopupWindow;

    .line 306
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGenderPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvGenderSelected:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGenderData:[Ljava/lang/String;

    array-length v4, v4

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 308
    .end local v0           #listview:Landroid/widget/ListView;
    .end local v1           #selecetAdapter:Lcom/baidu/launcher/feedback/FeedBackFragment$SelectAdapter;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGenderPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvGenderSelected:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 309
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "aInflater"
    .parameter "aContainer"
    .parameter "savedInstanceState"

    .prologue
    .line 66
    const v1, 0x7f0300aa

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeData:[Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGenderData:[Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mDefaultSelect:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mDefaultSelect:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mGengerSelect:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mDefaultSelect:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mAgeSelect:Ljava/lang/String;

    .line 77
    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtContent:Landroid/widget/EditText;

    .line 78
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtContent:Landroid/widget/EditText;

    new-instance v2, Lcom/baidu/launcher/feedback/FeedBackFragment$1;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/feedback/FeedBackFragment$1;-><init>(Lcom/baidu/launcher/feedback/FeedBackFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    const v1, 0x7f080217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvAgeSelected:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvAgeSelected:Landroid/widget/TextView;

    new-instance v2, Lcom/baidu/launcher/feedback/FeedBackFragment$2;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/feedback/FeedBackFragment$2;-><init>(Lcom/baidu/launcher/feedback/FeedBackFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f080218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvGenderSelected:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mTvGenderSelected:Landroid/widget/TextView;

    new-instance v2, Lcom/baidu/launcher/feedback/FeedBackFragment$3;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/feedback/FeedBackFragment$3;-><init>(Lcom/baidu/launcher/feedback/FeedBackFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v1, 0x7f080219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtCantactMail:Landroid/widget/EditText;

    .line 119
    const v1, 0x7f08021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mEdtCantactPhoneNumber:Landroid/widget/EditText;

    .line 120
    const v1, 0x7f08021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mBtnSumbitFeedBack:Landroid/widget/Button;

    .line 121
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mBtnSumbitFeedBack:Landroid/widget/Button;

    new-instance v2, Lcom/baidu/launcher/feedback/FeedBackFragment$4;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/feedback/FeedBackFragment$4;-><init>(Lcom/baidu/launcher/feedback/FeedBackFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v1, 0x7f080216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mRemainNumber:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/baidu/launcher/feedback/FeedBackFragment;->mRemainNumber:Landroid/widget/TextView;

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->initSaveState()V

    .line 163
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 169
    invoke-direct {p0}, Lcom/baidu/launcher/feedback/FeedBackFragment;->saveInstanceState()V

    .line 170
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 175
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    return-void
.end method
